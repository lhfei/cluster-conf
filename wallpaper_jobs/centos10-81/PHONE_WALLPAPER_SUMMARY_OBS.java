// ORM class for table 'PHONE_WALLPAPER_SUMMARY_OBS'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Tue Nov 24 17:26:43 CST 2015
// For connector: org.apache.sqoop.manager.MySQLManager
import org.apache.hadoop.io.BytesWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapred.lib.db.DBWritable;
import com.cloudera.sqoop.lib.JdbcWritableBridge;
import com.cloudera.sqoop.lib.DelimiterSet;
import com.cloudera.sqoop.lib.FieldFormatter;
import com.cloudera.sqoop.lib.RecordParser;
import com.cloudera.sqoop.lib.BooleanParser;
import com.cloudera.sqoop.lib.BlobRef;
import com.cloudera.sqoop.lib.ClobRef;
import com.cloudera.sqoop.lib.LargeObjectLoader;
import com.cloudera.sqoop.lib.SqoopRecord;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class PHONE_WALLPAPER_SUMMARY_OBS extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  protected ResultSet __cur_result_set;
  private Integer TOTAL_PREVIEW;
  public Integer get_TOTAL_PREVIEW() {
    return TOTAL_PREVIEW;
  }
  public void set_TOTAL_PREVIEW(Integer TOTAL_PREVIEW) {
    this.TOTAL_PREVIEW = TOTAL_PREVIEW;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_TOTAL_PREVIEW(Integer TOTAL_PREVIEW) {
    this.TOTAL_PREVIEW = TOTAL_PREVIEW;
    return this;
  }
  private Integer TOTAL_PREIVEW_FOR_PHONE;
  public Integer get_TOTAL_PREIVEW_FOR_PHONE() {
    return TOTAL_PREIVEW_FOR_PHONE;
  }
  public void set_TOTAL_PREIVEW_FOR_PHONE(Integer TOTAL_PREIVEW_FOR_PHONE) {
    this.TOTAL_PREIVEW_FOR_PHONE = TOTAL_PREIVEW_FOR_PHONE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_TOTAL_PREIVEW_FOR_PHONE(Integer TOTAL_PREIVEW_FOR_PHONE) {
    this.TOTAL_PREIVEW_FOR_PHONE = TOTAL_PREIVEW_FOR_PHONE;
    return this;
  }
  private Integer AVG_PREVIEW;
  public Integer get_AVG_PREVIEW() {
    return AVG_PREVIEW;
  }
  public void set_AVG_PREVIEW(Integer AVG_PREVIEW) {
    this.AVG_PREVIEW = AVG_PREVIEW;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_AVG_PREVIEW(Integer AVG_PREVIEW) {
    this.AVG_PREVIEW = AVG_PREVIEW;
    return this;
  }
  private Integer FAVORITE;
  public Integer get_FAVORITE() {
    return FAVORITE;
  }
  public void set_FAVORITE(Integer FAVORITE) {
    this.FAVORITE = FAVORITE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_FAVORITE(Integer FAVORITE) {
    this.FAVORITE = FAVORITE;
    return this;
  }
  private Integer TOTAL_FAVORITE_FOR_PHONE;
  public Integer get_TOTAL_FAVORITE_FOR_PHONE() {
    return TOTAL_FAVORITE_FOR_PHONE;
  }
  public void set_TOTAL_FAVORITE_FOR_PHONE(Integer TOTAL_FAVORITE_FOR_PHONE) {
    this.TOTAL_FAVORITE_FOR_PHONE = TOTAL_FAVORITE_FOR_PHONE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_TOTAL_FAVORITE_FOR_PHONE(Integer TOTAL_FAVORITE_FOR_PHONE) {
    this.TOTAL_FAVORITE_FOR_PHONE = TOTAL_FAVORITE_FOR_PHONE;
    return this;
  }
  private Integer TOTAL_SETTING;
  public Integer get_TOTAL_SETTING() {
    return TOTAL_SETTING;
  }
  public void set_TOTAL_SETTING(Integer TOTAL_SETTING) {
    this.TOTAL_SETTING = TOTAL_SETTING;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_TOTAL_SETTING(Integer TOTAL_SETTING) {
    this.TOTAL_SETTING = TOTAL_SETTING;
    return this;
  }
  private Integer SETTING_FOR_PHONE;
  public Integer get_SETTING_FOR_PHONE() {
    return SETTING_FOR_PHONE;
  }
  public void set_SETTING_FOR_PHONE(Integer SETTING_FOR_PHONE) {
    this.SETTING_FOR_PHONE = SETTING_FOR_PHONE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_SETTING_FOR_PHONE(Integer SETTING_FOR_PHONE) {
    this.SETTING_FOR_PHONE = SETTING_FOR_PHONE;
    return this;
  }
  private Integer APPLY_DESKTOP;
  public Integer get_APPLY_DESKTOP() {
    return APPLY_DESKTOP;
  }
  public void set_APPLY_DESKTOP(Integer APPLY_DESKTOP) {
    this.APPLY_DESKTOP = APPLY_DESKTOP;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_APPLY_DESKTOP(Integer APPLY_DESKTOP) {
    this.APPLY_DESKTOP = APPLY_DESKTOP;
    return this;
  }
  private Integer PHONE_APPLY_DESKTOP;
  public Integer get_PHONE_APPLY_DESKTOP() {
    return PHONE_APPLY_DESKTOP;
  }
  public void set_PHONE_APPLY_DESKTOP(Integer PHONE_APPLY_DESKTOP) {
    this.PHONE_APPLY_DESKTOP = PHONE_APPLY_DESKTOP;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_PHONE_APPLY_DESKTOP(Integer PHONE_APPLY_DESKTOP) {
    this.PHONE_APPLY_DESKTOP = PHONE_APPLY_DESKTOP;
    return this;
  }
  private Integer APPLY_LOCK;
  public Integer get_APPLY_LOCK() {
    return APPLY_LOCK;
  }
  public void set_APPLY_LOCK(Integer APPLY_LOCK) {
    this.APPLY_LOCK = APPLY_LOCK;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_APPLY_LOCK(Integer APPLY_LOCK) {
    this.APPLY_LOCK = APPLY_LOCK;
    return this;
  }
  private Integer PHONE_APPLY_LOCK;
  public Integer get_PHONE_APPLY_LOCK() {
    return PHONE_APPLY_LOCK;
  }
  public void set_PHONE_APPLY_LOCK(Integer PHONE_APPLY_LOCK) {
    this.PHONE_APPLY_LOCK = PHONE_APPLY_LOCK;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_PHONE_APPLY_LOCK(Integer PHONE_APPLY_LOCK) {
    this.PHONE_APPLY_LOCK = PHONE_APPLY_LOCK;
    return this;
  }
  private Integer APPLY_ALL;
  public Integer get_APPLY_ALL() {
    return APPLY_ALL;
  }
  public void set_APPLY_ALL(Integer APPLY_ALL) {
    this.APPLY_ALL = APPLY_ALL;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_APPLY_ALL(Integer APPLY_ALL) {
    this.APPLY_ALL = APPLY_ALL;
    return this;
  }
  private Integer PHONE_APPLY_ALL;
  public Integer get_PHONE_APPLY_ALL() {
    return PHONE_APPLY_ALL;
  }
  public void set_PHONE_APPLY_ALL(Integer PHONE_APPLY_ALL) {
    this.PHONE_APPLY_ALL = PHONE_APPLY_ALL;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_PHONE_APPLY_ALL(Integer PHONE_APPLY_ALL) {
    this.PHONE_APPLY_ALL = PHONE_APPLY_ALL;
    return this;
  }
  private Integer RANDOM_ENABLE;
  public Integer get_RANDOM_ENABLE() {
    return RANDOM_ENABLE;
  }
  public void set_RANDOM_ENABLE(Integer RANDOM_ENABLE) {
    this.RANDOM_ENABLE = RANDOM_ENABLE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_RANDOM_ENABLE(Integer RANDOM_ENABLE) {
    this.RANDOM_ENABLE = RANDOM_ENABLE;
    return this;
  }
  private Integer RANDOM_FOR_PHONE;
  public Integer get_RANDOM_FOR_PHONE() {
    return RANDOM_FOR_PHONE;
  }
  public void set_RANDOM_FOR_PHONE(Integer RANDOM_FOR_PHONE) {
    this.RANDOM_FOR_PHONE = RANDOM_FOR_PHONE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_RANDOM_FOR_PHONE(Integer RANDOM_FOR_PHONE) {
    this.RANDOM_FOR_PHONE = RANDOM_FOR_PHONE;
    return this;
  }
  private Integer RANDOM_DISABLE;
  public Integer get_RANDOM_DISABLE() {
    return RANDOM_DISABLE;
  }
  public void set_RANDOM_DISABLE(Integer RANDOM_DISABLE) {
    this.RANDOM_DISABLE = RANDOM_DISABLE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_RANDOM_DISABLE(Integer RANDOM_DISABLE) {
    this.RANDOM_DISABLE = RANDOM_DISABLE;
    return this;
  }
  private Integer RANDOM_DISABLE_PHONE;
  public Integer get_RANDOM_DISABLE_PHONE() {
    return RANDOM_DISABLE_PHONE;
  }
  public void set_RANDOM_DISABLE_PHONE(Integer RANDOM_DISABLE_PHONE) {
    this.RANDOM_DISABLE_PHONE = RANDOM_DISABLE_PHONE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_RANDOM_DISABLE_PHONE(Integer RANDOM_DISABLE_PHONE) {
    this.RANDOM_DISABLE_PHONE = RANDOM_DISABLE_PHONE;
    return this;
  }
  private Integer SHAKING_ENABLE;
  public Integer get_SHAKING_ENABLE() {
    return SHAKING_ENABLE;
  }
  public void set_SHAKING_ENABLE(Integer SHAKING_ENABLE) {
    this.SHAKING_ENABLE = SHAKING_ENABLE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_SHAKING_ENABLE(Integer SHAKING_ENABLE) {
    this.SHAKING_ENABLE = SHAKING_ENABLE;
    return this;
  }
  private Integer SHAKING_ENABLE_PHONE;
  public Integer get_SHAKING_ENABLE_PHONE() {
    return SHAKING_ENABLE_PHONE;
  }
  public void set_SHAKING_ENABLE_PHONE(Integer SHAKING_ENABLE_PHONE) {
    this.SHAKING_ENABLE_PHONE = SHAKING_ENABLE_PHONE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_SHAKING_ENABLE_PHONE(Integer SHAKING_ENABLE_PHONE) {
    this.SHAKING_ENABLE_PHONE = SHAKING_ENABLE_PHONE;
    return this;
  }
  private Integer SHAKING_DISABLE;
  public Integer get_SHAKING_DISABLE() {
    return SHAKING_DISABLE;
  }
  public void set_SHAKING_DISABLE(Integer SHAKING_DISABLE) {
    this.SHAKING_DISABLE = SHAKING_DISABLE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_SHAKING_DISABLE(Integer SHAKING_DISABLE) {
    this.SHAKING_DISABLE = SHAKING_DISABLE;
    return this;
  }
  private Integer SHAKING_DISABLE_PHONE;
  public Integer get_SHAKING_DISABLE_PHONE() {
    return SHAKING_DISABLE_PHONE;
  }
  public void set_SHAKING_DISABLE_PHONE(Integer SHAKING_DISABLE_PHONE) {
    this.SHAKING_DISABLE_PHONE = SHAKING_DISABLE_PHONE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_SHAKING_DISABLE_PHONE(Integer SHAKING_DISABLE_PHONE) {
    this.SHAKING_DISABLE_PHONE = SHAKING_DISABLE_PHONE;
    return this;
  }
  private String SUMMARY_DATE;
  public String get_SUMMARY_DATE() {
    return SUMMARY_DATE;
  }
  public void set_SUMMARY_DATE(String SUMMARY_DATE) {
    this.SUMMARY_DATE = SUMMARY_DATE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_SUMMARY_DATE(String SUMMARY_DATE) {
    this.SUMMARY_DATE = SUMMARY_DATE;
    return this;
  }
  private String IMEI;
  public String get_IMEI() {
    return IMEI;
  }
  public void set_IMEI(String IMEI) {
    this.IMEI = IMEI;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_IMEI(String IMEI) {
    this.IMEI = IMEI;
    return this;
  }
  private String SOFTWARE_VERSION;
  public String get_SOFTWARE_VERSION() {
    return SOFTWARE_VERSION;
  }
  public void set_SOFTWARE_VERSION(String SOFTWARE_VERSION) {
    this.SOFTWARE_VERSION = SOFTWARE_VERSION;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_SOFTWARE_VERSION(String SOFTWARE_VERSION) {
    this.SOFTWARE_VERSION = SOFTWARE_VERSION;
    return this;
  }
  private String EXTERNAL_MODEL;
  public String get_EXTERNAL_MODEL() {
    return EXTERNAL_MODEL;
  }
  public void set_EXTERNAL_MODEL(String EXTERNAL_MODEL) {
    this.EXTERNAL_MODEL = EXTERNAL_MODEL;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_EXTERNAL_MODEL(String EXTERNAL_MODEL) {
    this.EXTERNAL_MODEL = EXTERNAL_MODEL;
    return this;
  }
  private String GROUP_TITLE;
  public String get_GROUP_TITLE() {
    return GROUP_TITLE;
  }
  public void set_GROUP_TITLE(String GROUP_TITLE) {
    this.GROUP_TITLE = GROUP_TITLE;
  }
  public PHONE_WALLPAPER_SUMMARY_OBS with_GROUP_TITLE(String GROUP_TITLE) {
    this.GROUP_TITLE = GROUP_TITLE;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_WALLPAPER_SUMMARY_OBS)) {
      return false;
    }
    PHONE_WALLPAPER_SUMMARY_OBS that = (PHONE_WALLPAPER_SUMMARY_OBS) o;
    boolean equal = true;
    equal = equal && (this.TOTAL_PREVIEW == null ? that.TOTAL_PREVIEW == null : this.TOTAL_PREVIEW.equals(that.TOTAL_PREVIEW));
    equal = equal && (this.TOTAL_PREIVEW_FOR_PHONE == null ? that.TOTAL_PREIVEW_FOR_PHONE == null : this.TOTAL_PREIVEW_FOR_PHONE.equals(that.TOTAL_PREIVEW_FOR_PHONE));
    equal = equal && (this.AVG_PREVIEW == null ? that.AVG_PREVIEW == null : this.AVG_PREVIEW.equals(that.AVG_PREVIEW));
    equal = equal && (this.FAVORITE == null ? that.FAVORITE == null : this.FAVORITE.equals(that.FAVORITE));
    equal = equal && (this.TOTAL_FAVORITE_FOR_PHONE == null ? that.TOTAL_FAVORITE_FOR_PHONE == null : this.TOTAL_FAVORITE_FOR_PHONE.equals(that.TOTAL_FAVORITE_FOR_PHONE));
    equal = equal && (this.TOTAL_SETTING == null ? that.TOTAL_SETTING == null : this.TOTAL_SETTING.equals(that.TOTAL_SETTING));
    equal = equal && (this.SETTING_FOR_PHONE == null ? that.SETTING_FOR_PHONE == null : this.SETTING_FOR_PHONE.equals(that.SETTING_FOR_PHONE));
    equal = equal && (this.APPLY_DESKTOP == null ? that.APPLY_DESKTOP == null : this.APPLY_DESKTOP.equals(that.APPLY_DESKTOP));
    equal = equal && (this.PHONE_APPLY_DESKTOP == null ? that.PHONE_APPLY_DESKTOP == null : this.PHONE_APPLY_DESKTOP.equals(that.PHONE_APPLY_DESKTOP));
    equal = equal && (this.APPLY_LOCK == null ? that.APPLY_LOCK == null : this.APPLY_LOCK.equals(that.APPLY_LOCK));
    equal = equal && (this.PHONE_APPLY_LOCK == null ? that.PHONE_APPLY_LOCK == null : this.PHONE_APPLY_LOCK.equals(that.PHONE_APPLY_LOCK));
    equal = equal && (this.APPLY_ALL == null ? that.APPLY_ALL == null : this.APPLY_ALL.equals(that.APPLY_ALL));
    equal = equal && (this.PHONE_APPLY_ALL == null ? that.PHONE_APPLY_ALL == null : this.PHONE_APPLY_ALL.equals(that.PHONE_APPLY_ALL));
    equal = equal && (this.RANDOM_ENABLE == null ? that.RANDOM_ENABLE == null : this.RANDOM_ENABLE.equals(that.RANDOM_ENABLE));
    equal = equal && (this.RANDOM_FOR_PHONE == null ? that.RANDOM_FOR_PHONE == null : this.RANDOM_FOR_PHONE.equals(that.RANDOM_FOR_PHONE));
    equal = equal && (this.RANDOM_DISABLE == null ? that.RANDOM_DISABLE == null : this.RANDOM_DISABLE.equals(that.RANDOM_DISABLE));
    equal = equal && (this.RANDOM_DISABLE_PHONE == null ? that.RANDOM_DISABLE_PHONE == null : this.RANDOM_DISABLE_PHONE.equals(that.RANDOM_DISABLE_PHONE));
    equal = equal && (this.SHAKING_ENABLE == null ? that.SHAKING_ENABLE == null : this.SHAKING_ENABLE.equals(that.SHAKING_ENABLE));
    equal = equal && (this.SHAKING_ENABLE_PHONE == null ? that.SHAKING_ENABLE_PHONE == null : this.SHAKING_ENABLE_PHONE.equals(that.SHAKING_ENABLE_PHONE));
    equal = equal && (this.SHAKING_DISABLE == null ? that.SHAKING_DISABLE == null : this.SHAKING_DISABLE.equals(that.SHAKING_DISABLE));
    equal = equal && (this.SHAKING_DISABLE_PHONE == null ? that.SHAKING_DISABLE_PHONE == null : this.SHAKING_DISABLE_PHONE.equals(that.SHAKING_DISABLE_PHONE));
    equal = equal && (this.SUMMARY_DATE == null ? that.SUMMARY_DATE == null : this.SUMMARY_DATE.equals(that.SUMMARY_DATE));
    equal = equal && (this.IMEI == null ? that.IMEI == null : this.IMEI.equals(that.IMEI));
    equal = equal && (this.SOFTWARE_VERSION == null ? that.SOFTWARE_VERSION == null : this.SOFTWARE_VERSION.equals(that.SOFTWARE_VERSION));
    equal = equal && (this.EXTERNAL_MODEL == null ? that.EXTERNAL_MODEL == null : this.EXTERNAL_MODEL.equals(that.EXTERNAL_MODEL));
    equal = equal && (this.GROUP_TITLE == null ? that.GROUP_TITLE == null : this.GROUP_TITLE.equals(that.GROUP_TITLE));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof PHONE_WALLPAPER_SUMMARY_OBS)) {
      return false;
    }
    PHONE_WALLPAPER_SUMMARY_OBS that = (PHONE_WALLPAPER_SUMMARY_OBS) o;
    boolean equal = true;
    equal = equal && (this.TOTAL_PREVIEW == null ? that.TOTAL_PREVIEW == null : this.TOTAL_PREVIEW.equals(that.TOTAL_PREVIEW));
    equal = equal && (this.TOTAL_PREIVEW_FOR_PHONE == null ? that.TOTAL_PREIVEW_FOR_PHONE == null : this.TOTAL_PREIVEW_FOR_PHONE.equals(that.TOTAL_PREIVEW_FOR_PHONE));
    equal = equal && (this.AVG_PREVIEW == null ? that.AVG_PREVIEW == null : this.AVG_PREVIEW.equals(that.AVG_PREVIEW));
    equal = equal && (this.FAVORITE == null ? that.FAVORITE == null : this.FAVORITE.equals(that.FAVORITE));
    equal = equal && (this.TOTAL_FAVORITE_FOR_PHONE == null ? that.TOTAL_FAVORITE_FOR_PHONE == null : this.TOTAL_FAVORITE_FOR_PHONE.equals(that.TOTAL_FAVORITE_FOR_PHONE));
    equal = equal && (this.TOTAL_SETTING == null ? that.TOTAL_SETTING == null : this.TOTAL_SETTING.equals(that.TOTAL_SETTING));
    equal = equal && (this.SETTING_FOR_PHONE == null ? that.SETTING_FOR_PHONE == null : this.SETTING_FOR_PHONE.equals(that.SETTING_FOR_PHONE));
    equal = equal && (this.APPLY_DESKTOP == null ? that.APPLY_DESKTOP == null : this.APPLY_DESKTOP.equals(that.APPLY_DESKTOP));
    equal = equal && (this.PHONE_APPLY_DESKTOP == null ? that.PHONE_APPLY_DESKTOP == null : this.PHONE_APPLY_DESKTOP.equals(that.PHONE_APPLY_DESKTOP));
    equal = equal && (this.APPLY_LOCK == null ? that.APPLY_LOCK == null : this.APPLY_LOCK.equals(that.APPLY_LOCK));
    equal = equal && (this.PHONE_APPLY_LOCK == null ? that.PHONE_APPLY_LOCK == null : this.PHONE_APPLY_LOCK.equals(that.PHONE_APPLY_LOCK));
    equal = equal && (this.APPLY_ALL == null ? that.APPLY_ALL == null : this.APPLY_ALL.equals(that.APPLY_ALL));
    equal = equal && (this.PHONE_APPLY_ALL == null ? that.PHONE_APPLY_ALL == null : this.PHONE_APPLY_ALL.equals(that.PHONE_APPLY_ALL));
    equal = equal && (this.RANDOM_ENABLE == null ? that.RANDOM_ENABLE == null : this.RANDOM_ENABLE.equals(that.RANDOM_ENABLE));
    equal = equal && (this.RANDOM_FOR_PHONE == null ? that.RANDOM_FOR_PHONE == null : this.RANDOM_FOR_PHONE.equals(that.RANDOM_FOR_PHONE));
    equal = equal && (this.RANDOM_DISABLE == null ? that.RANDOM_DISABLE == null : this.RANDOM_DISABLE.equals(that.RANDOM_DISABLE));
    equal = equal && (this.RANDOM_DISABLE_PHONE == null ? that.RANDOM_DISABLE_PHONE == null : this.RANDOM_DISABLE_PHONE.equals(that.RANDOM_DISABLE_PHONE));
    equal = equal && (this.SHAKING_ENABLE == null ? that.SHAKING_ENABLE == null : this.SHAKING_ENABLE.equals(that.SHAKING_ENABLE));
    equal = equal && (this.SHAKING_ENABLE_PHONE == null ? that.SHAKING_ENABLE_PHONE == null : this.SHAKING_ENABLE_PHONE.equals(that.SHAKING_ENABLE_PHONE));
    equal = equal && (this.SHAKING_DISABLE == null ? that.SHAKING_DISABLE == null : this.SHAKING_DISABLE.equals(that.SHAKING_DISABLE));
    equal = equal && (this.SHAKING_DISABLE_PHONE == null ? that.SHAKING_DISABLE_PHONE == null : this.SHAKING_DISABLE_PHONE.equals(that.SHAKING_DISABLE_PHONE));
    equal = equal && (this.SUMMARY_DATE == null ? that.SUMMARY_DATE == null : this.SUMMARY_DATE.equals(that.SUMMARY_DATE));
    equal = equal && (this.IMEI == null ? that.IMEI == null : this.IMEI.equals(that.IMEI));
    equal = equal && (this.SOFTWARE_VERSION == null ? that.SOFTWARE_VERSION == null : this.SOFTWARE_VERSION.equals(that.SOFTWARE_VERSION));
    equal = equal && (this.EXTERNAL_MODEL == null ? that.EXTERNAL_MODEL == null : this.EXTERNAL_MODEL.equals(that.EXTERNAL_MODEL));
    equal = equal && (this.GROUP_TITLE == null ? that.GROUP_TITLE == null : this.GROUP_TITLE.equals(that.GROUP_TITLE));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.TOTAL_PREVIEW = JdbcWritableBridge.readInteger(1, __dbResults);
    this.TOTAL_PREIVEW_FOR_PHONE = JdbcWritableBridge.readInteger(2, __dbResults);
    this.AVG_PREVIEW = JdbcWritableBridge.readInteger(3, __dbResults);
    this.FAVORITE = JdbcWritableBridge.readInteger(4, __dbResults);
    this.TOTAL_FAVORITE_FOR_PHONE = JdbcWritableBridge.readInteger(5, __dbResults);
    this.TOTAL_SETTING = JdbcWritableBridge.readInteger(6, __dbResults);
    this.SETTING_FOR_PHONE = JdbcWritableBridge.readInteger(7, __dbResults);
    this.APPLY_DESKTOP = JdbcWritableBridge.readInteger(8, __dbResults);
    this.PHONE_APPLY_DESKTOP = JdbcWritableBridge.readInteger(9, __dbResults);
    this.APPLY_LOCK = JdbcWritableBridge.readInteger(10, __dbResults);
    this.PHONE_APPLY_LOCK = JdbcWritableBridge.readInteger(11, __dbResults);
    this.APPLY_ALL = JdbcWritableBridge.readInteger(12, __dbResults);
    this.PHONE_APPLY_ALL = JdbcWritableBridge.readInteger(13, __dbResults);
    this.RANDOM_ENABLE = JdbcWritableBridge.readInteger(14, __dbResults);
    this.RANDOM_FOR_PHONE = JdbcWritableBridge.readInteger(15, __dbResults);
    this.RANDOM_DISABLE = JdbcWritableBridge.readInteger(16, __dbResults);
    this.RANDOM_DISABLE_PHONE = JdbcWritableBridge.readInteger(17, __dbResults);
    this.SHAKING_ENABLE = JdbcWritableBridge.readInteger(18, __dbResults);
    this.SHAKING_ENABLE_PHONE = JdbcWritableBridge.readInteger(19, __dbResults);
    this.SHAKING_DISABLE = JdbcWritableBridge.readInteger(20, __dbResults);
    this.SHAKING_DISABLE_PHONE = JdbcWritableBridge.readInteger(21, __dbResults);
    this.SUMMARY_DATE = JdbcWritableBridge.readString(22, __dbResults);
    this.IMEI = JdbcWritableBridge.readString(23, __dbResults);
    this.SOFTWARE_VERSION = JdbcWritableBridge.readString(24, __dbResults);
    this.EXTERNAL_MODEL = JdbcWritableBridge.readString(25, __dbResults);
    this.GROUP_TITLE = JdbcWritableBridge.readString(26, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.TOTAL_PREVIEW = JdbcWritableBridge.readInteger(1, __dbResults);
    this.TOTAL_PREIVEW_FOR_PHONE = JdbcWritableBridge.readInteger(2, __dbResults);
    this.AVG_PREVIEW = JdbcWritableBridge.readInteger(3, __dbResults);
    this.FAVORITE = JdbcWritableBridge.readInteger(4, __dbResults);
    this.TOTAL_FAVORITE_FOR_PHONE = JdbcWritableBridge.readInteger(5, __dbResults);
    this.TOTAL_SETTING = JdbcWritableBridge.readInteger(6, __dbResults);
    this.SETTING_FOR_PHONE = JdbcWritableBridge.readInteger(7, __dbResults);
    this.APPLY_DESKTOP = JdbcWritableBridge.readInteger(8, __dbResults);
    this.PHONE_APPLY_DESKTOP = JdbcWritableBridge.readInteger(9, __dbResults);
    this.APPLY_LOCK = JdbcWritableBridge.readInteger(10, __dbResults);
    this.PHONE_APPLY_LOCK = JdbcWritableBridge.readInteger(11, __dbResults);
    this.APPLY_ALL = JdbcWritableBridge.readInteger(12, __dbResults);
    this.PHONE_APPLY_ALL = JdbcWritableBridge.readInteger(13, __dbResults);
    this.RANDOM_ENABLE = JdbcWritableBridge.readInteger(14, __dbResults);
    this.RANDOM_FOR_PHONE = JdbcWritableBridge.readInteger(15, __dbResults);
    this.RANDOM_DISABLE = JdbcWritableBridge.readInteger(16, __dbResults);
    this.RANDOM_DISABLE_PHONE = JdbcWritableBridge.readInteger(17, __dbResults);
    this.SHAKING_ENABLE = JdbcWritableBridge.readInteger(18, __dbResults);
    this.SHAKING_ENABLE_PHONE = JdbcWritableBridge.readInteger(19, __dbResults);
    this.SHAKING_DISABLE = JdbcWritableBridge.readInteger(20, __dbResults);
    this.SHAKING_DISABLE_PHONE = JdbcWritableBridge.readInteger(21, __dbResults);
    this.SUMMARY_DATE = JdbcWritableBridge.readString(22, __dbResults);
    this.IMEI = JdbcWritableBridge.readString(23, __dbResults);
    this.SOFTWARE_VERSION = JdbcWritableBridge.readString(24, __dbResults);
    this.EXTERNAL_MODEL = JdbcWritableBridge.readString(25, __dbResults);
    this.GROUP_TITLE = JdbcWritableBridge.readString(26, __dbResults);
  }
  public void loadLargeObjects(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void loadLargeObjects0(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void write(PreparedStatement __dbStmt) throws SQLException {
    write(__dbStmt, 0);
  }

  public int write(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeInteger(TOTAL_PREVIEW, 1 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(TOTAL_PREIVEW_FOR_PHONE, 2 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(AVG_PREVIEW, 3 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(FAVORITE, 4 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(TOTAL_FAVORITE_FOR_PHONE, 5 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(TOTAL_SETTING, 6 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SETTING_FOR_PHONE, 7 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(APPLY_DESKTOP, 8 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(PHONE_APPLY_DESKTOP, 9 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(APPLY_LOCK, 10 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(PHONE_APPLY_LOCK, 11 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(APPLY_ALL, 12 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(PHONE_APPLY_ALL, 13 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(RANDOM_ENABLE, 14 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(RANDOM_FOR_PHONE, 15 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(RANDOM_DISABLE, 16 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(RANDOM_DISABLE_PHONE, 17 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SHAKING_ENABLE, 18 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SHAKING_ENABLE_PHONE, 19 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SHAKING_DISABLE, 20 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SHAKING_DISABLE_PHONE, 21 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeString(SUMMARY_DATE, 22 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(IMEI, 23 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(SOFTWARE_VERSION, 24 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(EXTERNAL_MODEL, 25 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(GROUP_TITLE, 26 + __off, 12, __dbStmt);
    return 26;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeInteger(TOTAL_PREVIEW, 1 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(TOTAL_PREIVEW_FOR_PHONE, 2 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(AVG_PREVIEW, 3 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(FAVORITE, 4 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(TOTAL_FAVORITE_FOR_PHONE, 5 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(TOTAL_SETTING, 6 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SETTING_FOR_PHONE, 7 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(APPLY_DESKTOP, 8 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(PHONE_APPLY_DESKTOP, 9 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(APPLY_LOCK, 10 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(PHONE_APPLY_LOCK, 11 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(APPLY_ALL, 12 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(PHONE_APPLY_ALL, 13 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(RANDOM_ENABLE, 14 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(RANDOM_FOR_PHONE, 15 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(RANDOM_DISABLE, 16 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(RANDOM_DISABLE_PHONE, 17 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SHAKING_ENABLE, 18 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SHAKING_ENABLE_PHONE, 19 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SHAKING_DISABLE, 20 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeInteger(SHAKING_DISABLE_PHONE, 21 + __off, 4, __dbStmt);
    JdbcWritableBridge.writeString(SUMMARY_DATE, 22 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(IMEI, 23 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(SOFTWARE_VERSION, 24 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(EXTERNAL_MODEL, 25 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeString(GROUP_TITLE, 26 + __off, 12, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.TOTAL_PREVIEW = null;
    } else {
    this.TOTAL_PREVIEW = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.TOTAL_PREIVEW_FOR_PHONE = null;
    } else {
    this.TOTAL_PREIVEW_FOR_PHONE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.AVG_PREVIEW = null;
    } else {
    this.AVG_PREVIEW = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.FAVORITE = null;
    } else {
    this.FAVORITE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.TOTAL_FAVORITE_FOR_PHONE = null;
    } else {
    this.TOTAL_FAVORITE_FOR_PHONE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.TOTAL_SETTING = null;
    } else {
    this.TOTAL_SETTING = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.SETTING_FOR_PHONE = null;
    } else {
    this.SETTING_FOR_PHONE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.APPLY_DESKTOP = null;
    } else {
    this.APPLY_DESKTOP = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.PHONE_APPLY_DESKTOP = null;
    } else {
    this.PHONE_APPLY_DESKTOP = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.APPLY_LOCK = null;
    } else {
    this.APPLY_LOCK = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.PHONE_APPLY_LOCK = null;
    } else {
    this.PHONE_APPLY_LOCK = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.APPLY_ALL = null;
    } else {
    this.APPLY_ALL = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.PHONE_APPLY_ALL = null;
    } else {
    this.PHONE_APPLY_ALL = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.RANDOM_ENABLE = null;
    } else {
    this.RANDOM_ENABLE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.RANDOM_FOR_PHONE = null;
    } else {
    this.RANDOM_FOR_PHONE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.RANDOM_DISABLE = null;
    } else {
    this.RANDOM_DISABLE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.RANDOM_DISABLE_PHONE = null;
    } else {
    this.RANDOM_DISABLE_PHONE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.SHAKING_ENABLE = null;
    } else {
    this.SHAKING_ENABLE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.SHAKING_ENABLE_PHONE = null;
    } else {
    this.SHAKING_ENABLE_PHONE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.SHAKING_DISABLE = null;
    } else {
    this.SHAKING_DISABLE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.SHAKING_DISABLE_PHONE = null;
    } else {
    this.SHAKING_DISABLE_PHONE = Integer.valueOf(__dataIn.readInt());
    }
    if (__dataIn.readBoolean()) { 
        this.SUMMARY_DATE = null;
    } else {
    this.SUMMARY_DATE = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.IMEI = null;
    } else {
    this.IMEI = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.SOFTWARE_VERSION = null;
    } else {
    this.SOFTWARE_VERSION = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.EXTERNAL_MODEL = null;
    } else {
    this.EXTERNAL_MODEL = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.GROUP_TITLE = null;
    } else {
    this.GROUP_TITLE = Text.readString(__dataIn);
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.TOTAL_PREVIEW) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.TOTAL_PREVIEW);
    }
    if (null == this.TOTAL_PREIVEW_FOR_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.TOTAL_PREIVEW_FOR_PHONE);
    }
    if (null == this.AVG_PREVIEW) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.AVG_PREVIEW);
    }
    if (null == this.FAVORITE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.FAVORITE);
    }
    if (null == this.TOTAL_FAVORITE_FOR_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.TOTAL_FAVORITE_FOR_PHONE);
    }
    if (null == this.TOTAL_SETTING) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.TOTAL_SETTING);
    }
    if (null == this.SETTING_FOR_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SETTING_FOR_PHONE);
    }
    if (null == this.APPLY_DESKTOP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.APPLY_DESKTOP);
    }
    if (null == this.PHONE_APPLY_DESKTOP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.PHONE_APPLY_DESKTOP);
    }
    if (null == this.APPLY_LOCK) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.APPLY_LOCK);
    }
    if (null == this.PHONE_APPLY_LOCK) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.PHONE_APPLY_LOCK);
    }
    if (null == this.APPLY_ALL) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.APPLY_ALL);
    }
    if (null == this.PHONE_APPLY_ALL) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.PHONE_APPLY_ALL);
    }
    if (null == this.RANDOM_ENABLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.RANDOM_ENABLE);
    }
    if (null == this.RANDOM_FOR_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.RANDOM_FOR_PHONE);
    }
    if (null == this.RANDOM_DISABLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.RANDOM_DISABLE);
    }
    if (null == this.RANDOM_DISABLE_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.RANDOM_DISABLE_PHONE);
    }
    if (null == this.SHAKING_ENABLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SHAKING_ENABLE);
    }
    if (null == this.SHAKING_ENABLE_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SHAKING_ENABLE_PHONE);
    }
    if (null == this.SHAKING_DISABLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SHAKING_DISABLE);
    }
    if (null == this.SHAKING_DISABLE_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SHAKING_DISABLE_PHONE);
    }
    if (null == this.SUMMARY_DATE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SUMMARY_DATE);
    }
    if (null == this.IMEI) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, IMEI);
    }
    if (null == this.SOFTWARE_VERSION) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SOFTWARE_VERSION);
    }
    if (null == this.EXTERNAL_MODEL) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, EXTERNAL_MODEL);
    }
    if (null == this.GROUP_TITLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, GROUP_TITLE);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.TOTAL_PREVIEW) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.TOTAL_PREVIEW);
    }
    if (null == this.TOTAL_PREIVEW_FOR_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.TOTAL_PREIVEW_FOR_PHONE);
    }
    if (null == this.AVG_PREVIEW) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.AVG_PREVIEW);
    }
    if (null == this.FAVORITE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.FAVORITE);
    }
    if (null == this.TOTAL_FAVORITE_FOR_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.TOTAL_FAVORITE_FOR_PHONE);
    }
    if (null == this.TOTAL_SETTING) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.TOTAL_SETTING);
    }
    if (null == this.SETTING_FOR_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SETTING_FOR_PHONE);
    }
    if (null == this.APPLY_DESKTOP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.APPLY_DESKTOP);
    }
    if (null == this.PHONE_APPLY_DESKTOP) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.PHONE_APPLY_DESKTOP);
    }
    if (null == this.APPLY_LOCK) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.APPLY_LOCK);
    }
    if (null == this.PHONE_APPLY_LOCK) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.PHONE_APPLY_LOCK);
    }
    if (null == this.APPLY_ALL) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.APPLY_ALL);
    }
    if (null == this.PHONE_APPLY_ALL) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.PHONE_APPLY_ALL);
    }
    if (null == this.RANDOM_ENABLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.RANDOM_ENABLE);
    }
    if (null == this.RANDOM_FOR_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.RANDOM_FOR_PHONE);
    }
    if (null == this.RANDOM_DISABLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.RANDOM_DISABLE);
    }
    if (null == this.RANDOM_DISABLE_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.RANDOM_DISABLE_PHONE);
    }
    if (null == this.SHAKING_ENABLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SHAKING_ENABLE);
    }
    if (null == this.SHAKING_ENABLE_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SHAKING_ENABLE_PHONE);
    }
    if (null == this.SHAKING_DISABLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SHAKING_DISABLE);
    }
    if (null == this.SHAKING_DISABLE_PHONE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.SHAKING_DISABLE_PHONE);
    }
    if (null == this.SUMMARY_DATE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SUMMARY_DATE);
    }
    if (null == this.IMEI) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, IMEI);
    }
    if (null == this.SOFTWARE_VERSION) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, SOFTWARE_VERSION);
    }
    if (null == this.EXTERNAL_MODEL) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, EXTERNAL_MODEL);
    }
    if (null == this.GROUP_TITLE) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, GROUP_TITLE);
    }
  }
  private static final DelimiterSet __outputDelimiters = new DelimiterSet((char) 44, (char) 10, (char) 0, (char) 0, false);
  public String toString() {
    return toString(__outputDelimiters, true);
  }
  public String toString(DelimiterSet delimiters) {
    return toString(delimiters, true);
  }
  public String toString(boolean useRecordDelim) {
    return toString(__outputDelimiters, useRecordDelim);
  }
  public String toString(DelimiterSet delimiters, boolean useRecordDelim) {
    StringBuilder __sb = new StringBuilder();
    char fieldDelim = delimiters.getFieldsTerminatedBy();
    __sb.append(FieldFormatter.escapeAndEnclose(TOTAL_PREVIEW==null?"null":"" + TOTAL_PREVIEW, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(TOTAL_PREIVEW_FOR_PHONE==null?"null":"" + TOTAL_PREIVEW_FOR_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(AVG_PREVIEW==null?"null":"" + AVG_PREVIEW, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(FAVORITE==null?"null":"" + FAVORITE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(TOTAL_FAVORITE_FOR_PHONE==null?"null":"" + TOTAL_FAVORITE_FOR_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(TOTAL_SETTING==null?"null":"" + TOTAL_SETTING, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SETTING_FOR_PHONE==null?"null":"" + SETTING_FOR_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(APPLY_DESKTOP==null?"null":"" + APPLY_DESKTOP, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(PHONE_APPLY_DESKTOP==null?"null":"" + PHONE_APPLY_DESKTOP, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(APPLY_LOCK==null?"null":"" + APPLY_LOCK, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(PHONE_APPLY_LOCK==null?"null":"" + PHONE_APPLY_LOCK, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(APPLY_ALL==null?"null":"" + APPLY_ALL, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(PHONE_APPLY_ALL==null?"null":"" + PHONE_APPLY_ALL, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RANDOM_ENABLE==null?"null":"" + RANDOM_ENABLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RANDOM_FOR_PHONE==null?"null":"" + RANDOM_FOR_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RANDOM_DISABLE==null?"null":"" + RANDOM_DISABLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RANDOM_DISABLE_PHONE==null?"null":"" + RANDOM_DISABLE_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SHAKING_ENABLE==null?"null":"" + SHAKING_ENABLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SHAKING_ENABLE_PHONE==null?"null":"" + SHAKING_ENABLE_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SHAKING_DISABLE==null?"null":"" + SHAKING_DISABLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SHAKING_DISABLE_PHONE==null?"null":"" + SHAKING_DISABLE_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SUMMARY_DATE==null?"null":SUMMARY_DATE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(IMEI==null?"null":IMEI, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SOFTWARE_VERSION==null?"null":SOFTWARE_VERSION, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXTERNAL_MODEL==null?"null":EXTERNAL_MODEL, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GROUP_TITLE==null?"null":GROUP_TITLE, delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    __sb.append(FieldFormatter.escapeAndEnclose(TOTAL_PREVIEW==null?"null":"" + TOTAL_PREVIEW, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(TOTAL_PREIVEW_FOR_PHONE==null?"null":"" + TOTAL_PREIVEW_FOR_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(AVG_PREVIEW==null?"null":"" + AVG_PREVIEW, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(FAVORITE==null?"null":"" + FAVORITE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(TOTAL_FAVORITE_FOR_PHONE==null?"null":"" + TOTAL_FAVORITE_FOR_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(TOTAL_SETTING==null?"null":"" + TOTAL_SETTING, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SETTING_FOR_PHONE==null?"null":"" + SETTING_FOR_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(APPLY_DESKTOP==null?"null":"" + APPLY_DESKTOP, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(PHONE_APPLY_DESKTOP==null?"null":"" + PHONE_APPLY_DESKTOP, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(APPLY_LOCK==null?"null":"" + APPLY_LOCK, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(PHONE_APPLY_LOCK==null?"null":"" + PHONE_APPLY_LOCK, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(APPLY_ALL==null?"null":"" + APPLY_ALL, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(PHONE_APPLY_ALL==null?"null":"" + PHONE_APPLY_ALL, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RANDOM_ENABLE==null?"null":"" + RANDOM_ENABLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RANDOM_FOR_PHONE==null?"null":"" + RANDOM_FOR_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RANDOM_DISABLE==null?"null":"" + RANDOM_DISABLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(RANDOM_DISABLE_PHONE==null?"null":"" + RANDOM_DISABLE_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SHAKING_ENABLE==null?"null":"" + SHAKING_ENABLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SHAKING_ENABLE_PHONE==null?"null":"" + SHAKING_ENABLE_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SHAKING_DISABLE==null?"null":"" + SHAKING_DISABLE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SHAKING_DISABLE_PHONE==null?"null":"" + SHAKING_DISABLE_PHONE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SUMMARY_DATE==null?"null":SUMMARY_DATE, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(IMEI==null?"null":IMEI, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(SOFTWARE_VERSION==null?"null":SOFTWARE_VERSION, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(EXTERNAL_MODEL==null?"null":EXTERNAL_MODEL, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(GROUP_TITLE==null?"null":GROUP_TITLE, delimiters));
  }
  private static final DelimiterSet __inputDelimiters = new DelimiterSet((char) 9, (char) 10, (char) 0, (char) 0, false);
  private RecordParser __parser;
  public void parse(Text __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharSequence __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(byte [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(char [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(ByteBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  private void __loadFromFields(List<String> fields) {
    Iterator<String> __it = fields.listIterator();
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.TOTAL_PREVIEW = null; } else {
      this.TOTAL_PREVIEW = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.TOTAL_PREIVEW_FOR_PHONE = null; } else {
      this.TOTAL_PREIVEW_FOR_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.AVG_PREVIEW = null; } else {
      this.AVG_PREVIEW = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.FAVORITE = null; } else {
      this.FAVORITE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.TOTAL_FAVORITE_FOR_PHONE = null; } else {
      this.TOTAL_FAVORITE_FOR_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.TOTAL_SETTING = null; } else {
      this.TOTAL_SETTING = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SETTING_FOR_PHONE = null; } else {
      this.SETTING_FOR_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.APPLY_DESKTOP = null; } else {
      this.APPLY_DESKTOP = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.PHONE_APPLY_DESKTOP = null; } else {
      this.PHONE_APPLY_DESKTOP = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.APPLY_LOCK = null; } else {
      this.APPLY_LOCK = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.PHONE_APPLY_LOCK = null; } else {
      this.PHONE_APPLY_LOCK = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.APPLY_ALL = null; } else {
      this.APPLY_ALL = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.PHONE_APPLY_ALL = null; } else {
      this.PHONE_APPLY_ALL = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.RANDOM_ENABLE = null; } else {
      this.RANDOM_ENABLE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.RANDOM_FOR_PHONE = null; } else {
      this.RANDOM_FOR_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.RANDOM_DISABLE = null; } else {
      this.RANDOM_DISABLE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.RANDOM_DISABLE_PHONE = null; } else {
      this.RANDOM_DISABLE_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SHAKING_ENABLE = null; } else {
      this.SHAKING_ENABLE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SHAKING_ENABLE_PHONE = null; } else {
      this.SHAKING_ENABLE_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SHAKING_DISABLE = null; } else {
      this.SHAKING_DISABLE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SHAKING_DISABLE_PHONE = null; } else {
      this.SHAKING_DISABLE_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SUMMARY_DATE = null; } else {
      this.SUMMARY_DATE = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.IMEI = null; } else {
      this.IMEI = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SOFTWARE_VERSION = null; } else {
      this.SOFTWARE_VERSION = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.EXTERNAL_MODEL = null; } else {
      this.EXTERNAL_MODEL = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.GROUP_TITLE = null; } else {
      this.GROUP_TITLE = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.TOTAL_PREVIEW = null; } else {
      this.TOTAL_PREVIEW = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.TOTAL_PREIVEW_FOR_PHONE = null; } else {
      this.TOTAL_PREIVEW_FOR_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.AVG_PREVIEW = null; } else {
      this.AVG_PREVIEW = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.FAVORITE = null; } else {
      this.FAVORITE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.TOTAL_FAVORITE_FOR_PHONE = null; } else {
      this.TOTAL_FAVORITE_FOR_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.TOTAL_SETTING = null; } else {
      this.TOTAL_SETTING = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SETTING_FOR_PHONE = null; } else {
      this.SETTING_FOR_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.APPLY_DESKTOP = null; } else {
      this.APPLY_DESKTOP = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.PHONE_APPLY_DESKTOP = null; } else {
      this.PHONE_APPLY_DESKTOP = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.APPLY_LOCK = null; } else {
      this.APPLY_LOCK = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.PHONE_APPLY_LOCK = null; } else {
      this.PHONE_APPLY_LOCK = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.APPLY_ALL = null; } else {
      this.APPLY_ALL = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.PHONE_APPLY_ALL = null; } else {
      this.PHONE_APPLY_ALL = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.RANDOM_ENABLE = null; } else {
      this.RANDOM_ENABLE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.RANDOM_FOR_PHONE = null; } else {
      this.RANDOM_FOR_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.RANDOM_DISABLE = null; } else {
      this.RANDOM_DISABLE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.RANDOM_DISABLE_PHONE = null; } else {
      this.RANDOM_DISABLE_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SHAKING_ENABLE = null; } else {
      this.SHAKING_ENABLE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SHAKING_ENABLE_PHONE = null; } else {
      this.SHAKING_ENABLE_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SHAKING_DISABLE = null; } else {
      this.SHAKING_DISABLE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N") || __cur_str.length() == 0) { this.SHAKING_DISABLE_PHONE = null; } else {
      this.SHAKING_DISABLE_PHONE = Integer.valueOf(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SUMMARY_DATE = null; } else {
      this.SUMMARY_DATE = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.IMEI = null; } else {
      this.IMEI = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.SOFTWARE_VERSION = null; } else {
      this.SOFTWARE_VERSION = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.EXTERNAL_MODEL = null; } else {
      this.EXTERNAL_MODEL = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("\\N")) { this.GROUP_TITLE = null; } else {
      this.GROUP_TITLE = __cur_str;
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    PHONE_WALLPAPER_SUMMARY_OBS o = (PHONE_WALLPAPER_SUMMARY_OBS) super.clone();
    return o;
  }

  public void clone0(PHONE_WALLPAPER_SUMMARY_OBS o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new TreeMap<String, Object>();
    __sqoop$field_map.put("TOTAL_PREVIEW", this.TOTAL_PREVIEW);
    __sqoop$field_map.put("TOTAL_PREIVEW_FOR_PHONE", this.TOTAL_PREIVEW_FOR_PHONE);
    __sqoop$field_map.put("AVG_PREVIEW", this.AVG_PREVIEW);
    __sqoop$field_map.put("FAVORITE", this.FAVORITE);
    __sqoop$field_map.put("TOTAL_FAVORITE_FOR_PHONE", this.TOTAL_FAVORITE_FOR_PHONE);
    __sqoop$field_map.put("TOTAL_SETTING", this.TOTAL_SETTING);
    __sqoop$field_map.put("SETTING_FOR_PHONE", this.SETTING_FOR_PHONE);
    __sqoop$field_map.put("APPLY_DESKTOP", this.APPLY_DESKTOP);
    __sqoop$field_map.put("PHONE_APPLY_DESKTOP", this.PHONE_APPLY_DESKTOP);
    __sqoop$field_map.put("APPLY_LOCK", this.APPLY_LOCK);
    __sqoop$field_map.put("PHONE_APPLY_LOCK", this.PHONE_APPLY_LOCK);
    __sqoop$field_map.put("APPLY_ALL", this.APPLY_ALL);
    __sqoop$field_map.put("PHONE_APPLY_ALL", this.PHONE_APPLY_ALL);
    __sqoop$field_map.put("RANDOM_ENABLE", this.RANDOM_ENABLE);
    __sqoop$field_map.put("RANDOM_FOR_PHONE", this.RANDOM_FOR_PHONE);
    __sqoop$field_map.put("RANDOM_DISABLE", this.RANDOM_DISABLE);
    __sqoop$field_map.put("RANDOM_DISABLE_PHONE", this.RANDOM_DISABLE_PHONE);
    __sqoop$field_map.put("SHAKING_ENABLE", this.SHAKING_ENABLE);
    __sqoop$field_map.put("SHAKING_ENABLE_PHONE", this.SHAKING_ENABLE_PHONE);
    __sqoop$field_map.put("SHAKING_DISABLE", this.SHAKING_DISABLE);
    __sqoop$field_map.put("SHAKING_DISABLE_PHONE", this.SHAKING_DISABLE_PHONE);
    __sqoop$field_map.put("SUMMARY_DATE", this.SUMMARY_DATE);
    __sqoop$field_map.put("IMEI", this.IMEI);
    __sqoop$field_map.put("SOFTWARE_VERSION", this.SOFTWARE_VERSION);
    __sqoop$field_map.put("EXTERNAL_MODEL", this.EXTERNAL_MODEL);
    __sqoop$field_map.put("GROUP_TITLE", this.GROUP_TITLE);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("TOTAL_PREVIEW", this.TOTAL_PREVIEW);
    __sqoop$field_map.put("TOTAL_PREIVEW_FOR_PHONE", this.TOTAL_PREIVEW_FOR_PHONE);
    __sqoop$field_map.put("AVG_PREVIEW", this.AVG_PREVIEW);
    __sqoop$field_map.put("FAVORITE", this.FAVORITE);
    __sqoop$field_map.put("TOTAL_FAVORITE_FOR_PHONE", this.TOTAL_FAVORITE_FOR_PHONE);
    __sqoop$field_map.put("TOTAL_SETTING", this.TOTAL_SETTING);
    __sqoop$field_map.put("SETTING_FOR_PHONE", this.SETTING_FOR_PHONE);
    __sqoop$field_map.put("APPLY_DESKTOP", this.APPLY_DESKTOP);
    __sqoop$field_map.put("PHONE_APPLY_DESKTOP", this.PHONE_APPLY_DESKTOP);
    __sqoop$field_map.put("APPLY_LOCK", this.APPLY_LOCK);
    __sqoop$field_map.put("PHONE_APPLY_LOCK", this.PHONE_APPLY_LOCK);
    __sqoop$field_map.put("APPLY_ALL", this.APPLY_ALL);
    __sqoop$field_map.put("PHONE_APPLY_ALL", this.PHONE_APPLY_ALL);
    __sqoop$field_map.put("RANDOM_ENABLE", this.RANDOM_ENABLE);
    __sqoop$field_map.put("RANDOM_FOR_PHONE", this.RANDOM_FOR_PHONE);
    __sqoop$field_map.put("RANDOM_DISABLE", this.RANDOM_DISABLE);
    __sqoop$field_map.put("RANDOM_DISABLE_PHONE", this.RANDOM_DISABLE_PHONE);
    __sqoop$field_map.put("SHAKING_ENABLE", this.SHAKING_ENABLE);
    __sqoop$field_map.put("SHAKING_ENABLE_PHONE", this.SHAKING_ENABLE_PHONE);
    __sqoop$field_map.put("SHAKING_DISABLE", this.SHAKING_DISABLE);
    __sqoop$field_map.put("SHAKING_DISABLE_PHONE", this.SHAKING_DISABLE_PHONE);
    __sqoop$field_map.put("SUMMARY_DATE", this.SUMMARY_DATE);
    __sqoop$field_map.put("IMEI", this.IMEI);
    __sqoop$field_map.put("SOFTWARE_VERSION", this.SOFTWARE_VERSION);
    __sqoop$field_map.put("EXTERNAL_MODEL", this.EXTERNAL_MODEL);
    __sqoop$field_map.put("GROUP_TITLE", this.GROUP_TITLE);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if ("TOTAL_PREVIEW".equals(__fieldName)) {
      this.TOTAL_PREVIEW = (Integer) __fieldVal;
    }
    else    if ("TOTAL_PREIVEW_FOR_PHONE".equals(__fieldName)) {
      this.TOTAL_PREIVEW_FOR_PHONE = (Integer) __fieldVal;
    }
    else    if ("AVG_PREVIEW".equals(__fieldName)) {
      this.AVG_PREVIEW = (Integer) __fieldVal;
    }
    else    if ("FAVORITE".equals(__fieldName)) {
      this.FAVORITE = (Integer) __fieldVal;
    }
    else    if ("TOTAL_FAVORITE_FOR_PHONE".equals(__fieldName)) {
      this.TOTAL_FAVORITE_FOR_PHONE = (Integer) __fieldVal;
    }
    else    if ("TOTAL_SETTING".equals(__fieldName)) {
      this.TOTAL_SETTING = (Integer) __fieldVal;
    }
    else    if ("SETTING_FOR_PHONE".equals(__fieldName)) {
      this.SETTING_FOR_PHONE = (Integer) __fieldVal;
    }
    else    if ("APPLY_DESKTOP".equals(__fieldName)) {
      this.APPLY_DESKTOP = (Integer) __fieldVal;
    }
    else    if ("PHONE_APPLY_DESKTOP".equals(__fieldName)) {
      this.PHONE_APPLY_DESKTOP = (Integer) __fieldVal;
    }
    else    if ("APPLY_LOCK".equals(__fieldName)) {
      this.APPLY_LOCK = (Integer) __fieldVal;
    }
    else    if ("PHONE_APPLY_LOCK".equals(__fieldName)) {
      this.PHONE_APPLY_LOCK = (Integer) __fieldVal;
    }
    else    if ("APPLY_ALL".equals(__fieldName)) {
      this.APPLY_ALL = (Integer) __fieldVal;
    }
    else    if ("PHONE_APPLY_ALL".equals(__fieldName)) {
      this.PHONE_APPLY_ALL = (Integer) __fieldVal;
    }
    else    if ("RANDOM_ENABLE".equals(__fieldName)) {
      this.RANDOM_ENABLE = (Integer) __fieldVal;
    }
    else    if ("RANDOM_FOR_PHONE".equals(__fieldName)) {
      this.RANDOM_FOR_PHONE = (Integer) __fieldVal;
    }
    else    if ("RANDOM_DISABLE".equals(__fieldName)) {
      this.RANDOM_DISABLE = (Integer) __fieldVal;
    }
    else    if ("RANDOM_DISABLE_PHONE".equals(__fieldName)) {
      this.RANDOM_DISABLE_PHONE = (Integer) __fieldVal;
    }
    else    if ("SHAKING_ENABLE".equals(__fieldName)) {
      this.SHAKING_ENABLE = (Integer) __fieldVal;
    }
    else    if ("SHAKING_ENABLE_PHONE".equals(__fieldName)) {
      this.SHAKING_ENABLE_PHONE = (Integer) __fieldVal;
    }
    else    if ("SHAKING_DISABLE".equals(__fieldName)) {
      this.SHAKING_DISABLE = (Integer) __fieldVal;
    }
    else    if ("SHAKING_DISABLE_PHONE".equals(__fieldName)) {
      this.SHAKING_DISABLE_PHONE = (Integer) __fieldVal;
    }
    else    if ("SUMMARY_DATE".equals(__fieldName)) {
      this.SUMMARY_DATE = (String) __fieldVal;
    }
    else    if ("IMEI".equals(__fieldName)) {
      this.IMEI = (String) __fieldVal;
    }
    else    if ("SOFTWARE_VERSION".equals(__fieldName)) {
      this.SOFTWARE_VERSION = (String) __fieldVal;
    }
    else    if ("EXTERNAL_MODEL".equals(__fieldName)) {
      this.EXTERNAL_MODEL = (String) __fieldVal;
    }
    else    if ("GROUP_TITLE".equals(__fieldName)) {
      this.GROUP_TITLE = (String) __fieldVal;
    }
    else {
      throw new RuntimeException("No such field: " + __fieldName);
    }
  }
  public boolean setField0(String __fieldName, Object __fieldVal) {
    if ("TOTAL_PREVIEW".equals(__fieldName)) {
      this.TOTAL_PREVIEW = (Integer) __fieldVal;
      return true;
    }
    else    if ("TOTAL_PREIVEW_FOR_PHONE".equals(__fieldName)) {
      this.TOTAL_PREIVEW_FOR_PHONE = (Integer) __fieldVal;
      return true;
    }
    else    if ("AVG_PREVIEW".equals(__fieldName)) {
      this.AVG_PREVIEW = (Integer) __fieldVal;
      return true;
    }
    else    if ("FAVORITE".equals(__fieldName)) {
      this.FAVORITE = (Integer) __fieldVal;
      return true;
    }
    else    if ("TOTAL_FAVORITE_FOR_PHONE".equals(__fieldName)) {
      this.TOTAL_FAVORITE_FOR_PHONE = (Integer) __fieldVal;
      return true;
    }
    else    if ("TOTAL_SETTING".equals(__fieldName)) {
      this.TOTAL_SETTING = (Integer) __fieldVal;
      return true;
    }
    else    if ("SETTING_FOR_PHONE".equals(__fieldName)) {
      this.SETTING_FOR_PHONE = (Integer) __fieldVal;
      return true;
    }
    else    if ("APPLY_DESKTOP".equals(__fieldName)) {
      this.APPLY_DESKTOP = (Integer) __fieldVal;
      return true;
    }
    else    if ("PHONE_APPLY_DESKTOP".equals(__fieldName)) {
      this.PHONE_APPLY_DESKTOP = (Integer) __fieldVal;
      return true;
    }
    else    if ("APPLY_LOCK".equals(__fieldName)) {
      this.APPLY_LOCK = (Integer) __fieldVal;
      return true;
    }
    else    if ("PHONE_APPLY_LOCK".equals(__fieldName)) {
      this.PHONE_APPLY_LOCK = (Integer) __fieldVal;
      return true;
    }
    else    if ("APPLY_ALL".equals(__fieldName)) {
      this.APPLY_ALL = (Integer) __fieldVal;
      return true;
    }
    else    if ("PHONE_APPLY_ALL".equals(__fieldName)) {
      this.PHONE_APPLY_ALL = (Integer) __fieldVal;
      return true;
    }
    else    if ("RANDOM_ENABLE".equals(__fieldName)) {
      this.RANDOM_ENABLE = (Integer) __fieldVal;
      return true;
    }
    else    if ("RANDOM_FOR_PHONE".equals(__fieldName)) {
      this.RANDOM_FOR_PHONE = (Integer) __fieldVal;
      return true;
    }
    else    if ("RANDOM_DISABLE".equals(__fieldName)) {
      this.RANDOM_DISABLE = (Integer) __fieldVal;
      return true;
    }
    else    if ("RANDOM_DISABLE_PHONE".equals(__fieldName)) {
      this.RANDOM_DISABLE_PHONE = (Integer) __fieldVal;
      return true;
    }
    else    if ("SHAKING_ENABLE".equals(__fieldName)) {
      this.SHAKING_ENABLE = (Integer) __fieldVal;
      return true;
    }
    else    if ("SHAKING_ENABLE_PHONE".equals(__fieldName)) {
      this.SHAKING_ENABLE_PHONE = (Integer) __fieldVal;
      return true;
    }
    else    if ("SHAKING_DISABLE".equals(__fieldName)) {
      this.SHAKING_DISABLE = (Integer) __fieldVal;
      return true;
    }
    else    if ("SHAKING_DISABLE_PHONE".equals(__fieldName)) {
      this.SHAKING_DISABLE_PHONE = (Integer) __fieldVal;
      return true;
    }
    else    if ("SUMMARY_DATE".equals(__fieldName)) {
      this.SUMMARY_DATE = (String) __fieldVal;
      return true;
    }
    else    if ("IMEI".equals(__fieldName)) {
      this.IMEI = (String) __fieldVal;
      return true;
    }
    else    if ("SOFTWARE_VERSION".equals(__fieldName)) {
      this.SOFTWARE_VERSION = (String) __fieldVal;
      return true;
    }
    else    if ("EXTERNAL_MODEL".equals(__fieldName)) {
      this.EXTERNAL_MODEL = (String) __fieldVal;
      return true;
    }
    else    if ("GROUP_TITLE".equals(__fieldName)) {
      this.GROUP_TITLE = (String) __fieldVal;
      return true;
    }
    else {
      return false;    }
  }
}
