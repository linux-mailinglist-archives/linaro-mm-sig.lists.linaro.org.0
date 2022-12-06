Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5707F644390
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 13:56:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 001663EF23
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 12:56:20 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 81DF93EA17
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Dec 2022 12:56:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=PjiIWcH5;
	spf=pass (lists.linaro.org: domain of quic_charante@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_charante@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B6C21If028261;
	Tue, 6 Dec 2022 12:55:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=tH9ebQTUTGg5MhqISV0alVchqVg/SsibRHJIe86lDPI=;
 b=PjiIWcH5s8GcZNHOvZuo2sel6OmAXplsv6O8xSJWup5CPWYXDe0OPgWrRHIIFJSMfxYd
 Bht2QdhFNUitPIDm0HMwdOdkKlwhgpXRMgvhimYp3PVEP/s4YGI4p7pbTvhImPQZ00WV
 uY33WXmAFrK4RUjDtywSHRxdmQoF9uYMuVsuckJfemozo3WMRqjnva2ALAYoUAX0J+jD
 K8L93budHn3RLuxNdTskZa58YoTVs5TlYKP2iHmoTalEuXl/HoR5TwHJVs4FcPE/5n1Y
 RytQnae1/F502cZLw5Af1GnL2BzzQjEwNPXWjLH1EMrJsRhJogway4lbWnEUZrhRkRdy RQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3m9e61kdan-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 Dec 2022 12:55:57 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 2B6CtuAN016224
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 6 Dec 2022 12:55:56 GMT
Received: from [10.216.21.230] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Tue, 6 Dec 2022
 04:55:52 -0800
Message-ID: <866708a4-9f31-b5e5-fbda-10b2a6c948bf@quicinc.com>
Date: Tue, 6 Dec 2022 18:25:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
        cuigaosheng <cuigaosheng1@huawei.com>,
        =?UTF-8?Q?Christian_K=c3=b6nig?=
	<christian.koenig@amd.com>,
        "T.J. Mercier" <tjmercier@google.com>
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
 <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
 <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
 <2c9fa595-e788-5474-4f2b-ffbd08a70d13@amd.com>
 <CABdmKX0KJJV0iQwy0aUNXcLc1DGyLjmh6_Y53asHEoh-uyHzAA@mail.gmail.com>
 <83944425-c177-7918-bcde-9cf7296a613f@amd.com>
 <e12784da-b3e3-ddec-0e84-f968d60097c4@quicinc.com>
 <b2d5d904-99f2-7974-a22d-63a6cf864973@huawei.com>
 <689ad89b-0e34-3743-24c9-3f92856720f8@amd.com>
 <a87e407c-f858-28f1-c5ea-ca69b39db53a@huawei.com>
 <3de513b2-8ec3-2ff4-136d-0f56ac07c0ff@gmail.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <3de513b2-8ec3-2ff4-136d-0f56ac07c0ff@gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GQnB74ySEOxHXNZTF5sxudZXdkSM6bdB
X-Proofpoint-GUID: GQnB74ySEOxHXNZTF5sxudZXdkSM6bdB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-06_08,2022-12-06_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 mlxscore=0 priorityscore=1501 mlxlogscore=999 adultscore=0 spamscore=0
 malwarescore=0 clxscore=1011 impostorscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2212060104
X-Rspamd-Queue-Id: 81DF93EA17
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[205.220.180.131:from];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,huawei.com,amd.com,google.com];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[129.46.96.20:server fail]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CJT3EXYBLFS62SO7UCDQVBEHYVUV32IP
X-Message-ID-Hash: CJT3EXYBLFS62SO7UCDQVBEHYVUV32IP
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CJT3EXYBLFS62SO7UCDQVBEHYVUV32IP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIENocmlzdGlhbi9USiBmb3IgYWxsIHlvdXIgaW5wdXRzISENCg0KT24gMTEvMjQvMjAy
MiA2OjI1IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IEkgd2FzIGFscmVhZHkgd29u
ZGVyaW5nIHdoeSB0aGUgb3JkZXIgaXMgdGhpcyB3YXkuDQo+Pj4NCj4+PiBXaHkgaXMgZG1hX2J1
Zl9zdGF0c19zZXR1cCgpIG5lZWRpbmcgdGhlIGZpbGUgaW4gdGhlIGZpcnN0IHBsYWNlPyANCj4+
DQo+PiBkbWFidWYtPmZpbGUgd2lsbCBiZSB1c2VkIGluIGRtYV9idWZfc3RhdHNfc2V0dXAoKSwg
dGhlDQo+PiBkbWFfYnVmX3N0YXRzX3NldHVwKCkgYXMgZm9sbG93czoNCj4+DQo+Pj4gMTcxIGlu
dCBkbWFfYnVmX3N0YXRzX3NldHVwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+Pj4gMTcyIHsN
Cj4+PiAxNzPCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfYnVmX3N5c2ZzX2VudHJ5ICpzeXNm
c19lbnRyeTsNCj4+PiAxNzTCoMKgwqDCoMKgwqDCoMKgIGludCByZXQ7DQo+Pj4gMTc1DQo+Pj4g
MTc2wqDCoMKgwqDCoMKgwqDCoCBpZiAoIWRtYWJ1ZiB8fCAhZG1hYnVmLT5maWxlKQ0KPj4+IDE3
N8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOw0KPj4+IDE3
OA0KPj4+IDE3OcKgwqDCoMKgwqDCoMKgwqAgaWYgKCFkbWFidWYtPmV4cF9uYW1lKSB7DQo+Pj4g
MTgwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJleHBvcnRlciBuYW1l
IG11c3Qgbm90IGJlIGVtcHR5IGlmIHN0YXRzDQo+Pj4gbmVlZGVkXG4iKTsNCj4+PiAxODHCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsNCj4+PiAxODLCoMKg
wqDCoMKgwqDCoMKgIH0NCj4+PiAxODMNCj4+PiAxODTCoMKgwqDCoMKgwqDCoMKgIHN5c2ZzX2Vu
dHJ5ID0ga3phbGxvYyhzaXplb2Yoc3RydWN0IGRtYV9idWZfc3lzZnNfZW50cnkpLA0KPj4+IEdG
UF9LRVJORUwpOw0KPj4+IDE4NcKgwqDCoMKgwqDCoMKgwqAgaWYgKCFzeXNmc19lbnRyeSkNCj4+
PiAxODbCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsNCj4+
PiAxODcNCj4+PiAxODjCoMKgwqDCoMKgwqDCoMKgIHN5c2ZzX2VudHJ5LT5rb2JqLmtzZXQgPSBk
bWFfYnVmX3Blcl9idWZmZXJfc3RhdHNfa3NldDsNCj4+PiAxODnCoMKgwqDCoMKgwqDCoMKgIHN5
c2ZzX2VudHJ5LT5kbWFidWYgPSBkbWFidWY7DQo+Pj4gMTkwDQo+Pj4gMTkxwqDCoMKgwqDCoMKg
wqDCoCBkbWFidWYtPnN5c2ZzX2VudHJ5ID0gc3lzZnNfZW50cnk7DQo+Pj4gMTkyDQo+Pj4gMTkz
wqDCoMKgwqDCoMKgwqDCoCAvKiBjcmVhdGUgdGhlIGRpcmVjdG9yeSBmb3IgYnVmZmVyIHN0YXRz
ICovDQo+Pj4gMTk0wqDCoMKgwqDCoMKgwqDCoCByZXQgPSBrb2JqZWN0X2luaXRfYW5kX2FkZCgm
c3lzZnNfZW50cnktPmtvYmosDQo+Pj4gJmRtYV9idWZfa3R5cGUsIE5VTEwsDQo+Pj4gMTk1wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAiJWx1IiwNCj4+PiBmaWxlX2lub2RlKGRtYWJ1Zi0+ZmlsZSktPmlfaW5vKTsN
Cj4gDQo+IEFoLCBzbyBpdCB1c2VzIHRoZSBpX2lubyBvZiB0aGUgZmlsZSBmb3IgdGhlIHN5c2Zz
IHVuaXF1ZSBuYW1lLg0KPiANCj4gSSdtIGdvaW5nIHRvIHRha2UgYW5vdGhlciBsb29rIGhvdyB0
byBwcm9wZXJseSBjbGVhbiB0aGlzIHVwLg0KPiANCg0KSG93IGFib3V0IGRlbGV0aW5nIHRoZSBk
bWFidWYgZnJvbSB0aGUgZGJfbGlzdCBkaXJlY3RseSBpbiB0aGUgZXJyb3INCnBhdGggKHdoaWNo
IGlzIHVzdWFsbHkgZG9uZSBieSB0aGUgZnB1dCgpKSBhbmQgdGhlbiBjb250aW51ZSB3aXRoIHRo
ZQ0Kbm9ybWFsIGZwdXQoKSBoZXJlLg0KDQpKdXN0IGNvbXBpbGUgdGVzdGVkIHRoZSBiZWxvdyBj
b2RlIGFuZCBJZiB0aGUgbG9naWMgbWFrZSBzZW5zZSBmb3IgeW91LA0Kd2lsbCBzZW5kIHRoZSBm
aW5hbCB0ZXN0ZWQgcGF0Y2guDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tPjwtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCBlNmYz
NmMwLi4xMGExNzI3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAgLTg3LDE5ICs4NywyOCBAQCBzdGF0aWMg
dm9pZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQ0KICAgICAgICBrZnJl
ZShkbWFidWYpOw0KIH0NCg0KLXN0YXRpYyBpbnQgZG1hX2J1Zl9maWxlX3JlbGVhc2Uoc3RydWN0
IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpDQorc3RhdGljIHZvaWQgZG1hX2J1Zl9k
Yl9saXN0X3JlbW92ZShzdHJ1Y3QgZmlsZSAqZmlsZSkNCiB7DQogICAgICAgIHN0cnVjdCBkbWFf
YnVmICpkbWFidWY7DQoNCi0gICAgICAgaWYgKCFpc19kbWFfYnVmX2ZpbGUoZmlsZSkpDQotICAg
ICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQotDQogICAgICAgIGRtYWJ1ZiA9IGZpbGUtPnBy
aXZhdGVfZGF0YTsNCisgICAgICAgaWYgKCFkbWFidWYpDQorICAgICAgICAgICAgICAgcmV0dXJu
Ow0KDQogICAgICAgIG11dGV4X2xvY2soJmRiX2xpc3QubG9jayk7DQogICAgICAgIGxpc3RfZGVs
KCZkbWFidWYtPmxpc3Rfbm9kZSk7DQogICAgICAgIG11dGV4X3VubG9jaygmZGJfbGlzdC5sb2Nr
KTsNCg0KKyAgICAgICBmaWxlLT5wcml2YXRlX2RhdGEgPSBOVUxMOw0KK30NCisNCitzdGF0aWMg
aW50IGRtYV9idWZfZmlsZV9yZWxlYXNlKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxl
ICpmaWxlKQ0KK3sNCisgICAgICAgaWYgKCFpc19kbWFfYnVmX2ZpbGUoZmlsZSkpDQorICAgICAg
ICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQorDQorICAgICAgIGRtYV9idWZfZGJfbGlzdF9yZW1v
dmUoZmlsZSk7DQorDQogICAgICAgIHJldHVybiAwOw0KIH0NCg0KQEAgLTY4OCw2ICs2OTcsOCBA
QCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0DQpkbWFfYnVmX2V4
cG9ydF9pbmZvICpleHBfaW5mbykNCiAgICAgICAgICogZWFybHkgYmVmb3JlIGNhbGxpbmcgdGhl
IHJlbGVhc2UoKSBkbWFfYnVmIG9wLg0KICAgICAgICAgKi8NCiAgICAgICAgZmlsZS0+Zl9wYXRo
LmRlbnRyeS0+ZF9mc2RhdGEgPSBOVUxMOw0KKw0KKyAgICAgICBkbWFfYnVmX2RiX2xpc3RfcmVt
b3ZlKGZpbGUpOw0KICAgICAgICBmcHV0KGZpbGUpOw0KIGVycl9kbWFidWY6DQogICAgICAgIGtm
cmVlKGRtYWJ1Zik7DQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tPjwtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KDQoNCj4gVGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dCwNCj4gQ2hyaXN0
aWFuLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
