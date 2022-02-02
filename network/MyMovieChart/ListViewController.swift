import UIKit
class ListViewController : UITableViewController {
    
        // 튜플 아이템으로 구성된 데이터 셋
        var dataset = [
            ("다크 나이트", "영웅물에 철학에 음악까지 더해져 예술이 되다.", "2008-09-04", 8.95,"darknight.jpg"),
            ("호우시절", "때를 알고 내리는 좋은 비", "2009-10-08", 7.31,"rain.jpg"),
            ("말할 수 없는 비밀", "여기서 너까지 다섯 걸음", "2015-05-07", 9.19,"secret.jpg")
        ]
        
        // 테이블 뷰를 구성할 리스트 데이터
        lazy var list : [MovieVO] = {
            var datalist = [MovieVO]()
            
            for (title, desc, opendate, rating, thumbnail) in self.dataset {
                let mvo = MovieVO()
                
                mvo.title = title
                mvo.description = desc
                mvo.opendate = opendate
                mvo.rating = rating
                mvo.thumbnail = thumbnail
                datalist.append(mvo)
            }
            
            return datalist
        }()
        
        
        override func viewDidLoad( ) {

            /* 리팩토링 이전 코드
            
            // 첫번째 행
            var mvo = MovieVO( )
            mvo.title = "다크나이트"
            mvo.description = "영웅물에 철학에 음악까지 더해져 예술이 되다."
            mvo.opendate = "2008-09-04"
            mvo.rating = 8.95
            
            // 배열에 추가
            self.list.append(mvo)
            
            // 두번째 행
            mvo = MovieVO( )
            mvo.title = "호우시절"
            mvo.description = "때를 알고 내리는 좋은 비"
            mvo.opendate = "2009-10-08"
            mvo.rating = 7.31

            // 배열에 추가
            self.list.append(mvo)
            
            // 세번째 행
            mvo = MovieVO( )
            mvo.title = "말할 수 없는 비밀"
            mvo.description = "여기서 너까지 다섯 걸음"
            mvo.opendate = "2015-05-07"
            mvo.rating = 9.19
            
            // 배열에 추가
            self.list.append(mvo)
            
                     */
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.list.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // 주어진 행에 맞는 데이터 소스를 읽어온다.
            let row = self.list[indexPath.row]
            
            // 테이블 셀 객체를 직접 생성하는 대신 큐로부터 가져옴 (옵셔널  강제  언레핑  제거후 안전 적으로 제거)
            let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! MovieCell
            
             // 데이터 소스에 저장된 값을 각 아울렛 변수에 할당
            cell.titleLabel?.text = row.title
            cell.descriptionLabel?.text = row.description
            cell.opendataLabel?.text = row.opendate
            cell.ratingLabel?.text = "\(row.rating!)"
            // ============   여기 까지 내용 변경 ==========
            
            // 추가된 부분: 이미지 뷰 처리
            cell.thumbnailImageView.image = UIImage(named: row.thumbnail!)
            
            // 구성된 셀을 반환함
            return cell
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            NSLog("선택된 행은 \(indexPath.row) 번째 행입니다")
        }
    }

