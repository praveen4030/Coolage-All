import 'package:injectable/injectable.dart';
import 'package:placement/domain/company/i_company_repo.dart';

@LazySingleton(as: ICompanyRepo)
class CompanyRepo extends ICompanyRepo {
  CompanyRepo();
}
