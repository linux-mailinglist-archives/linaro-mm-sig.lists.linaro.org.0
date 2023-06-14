Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB62C7304B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jun 2023 18:16:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7CBA3F937
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jun 2023 16:16:10 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 0F9BA44350
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jun 2023 16:15:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=ComPqdfl;
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_jhugo@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_jhugo@quicinc.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35EFGRid006379;
	Wed, 14 Jun 2023 16:15:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=qcppdkim1;
 bh=Cxu80qYLWBN6CGaM9a2GrYS5uFWXPH5qjpPWb0qWyWk=;
 b=ComPqdflkC/tVcHLZshoOE+t0MDAkUSB+Nrh452o3CNQZq0+kTtKh1sQbRTNomQJGmQ/
 2RX/rs7l0AzlutwIdE8oAwjdOeQpACV0J3sTtKG9+aDtGcPoZOrMmpGaZiskMVFiau6K
 9llkGNjNhr0WoTl4DAhvS/Tv/R+Cy6/8VJf19jWfL2om5zWtkgh9dschObIvQcKEfMtS
 5KhFiJGq0hoVkZrCwxnScghXuDN+YkMTHSeHR25XpP4aHvCL0xLwslgZGEWwSOouU4r+
 F6YyONm5POqxLNSs7TbPYrNCJpWyVxRLtmabhIjnizgVVUYDBc31jJYVhZjolpD65wKO qA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r7fae89n8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Jun 2023 16:15:47 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35EGFkIZ030883
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Jun 2023 16:15:46 GMT
Received: from jhugo-lnx.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 14 Jun 2023 09:15:45 -0700
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
To: <quic_carlv@quicinc.com>, <quic_pkanojiy@quicinc.com>,
        <christian.koenig@amd.com>, <sukrut.bellary@linux.com>,
        <sumit.semwal@linaro.org>
Date: Wed, 14 Jun 2023 10:15:28 -0600
Message-ID: <20230614161528.11710-1-quic_jhugo@quicinc.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: _TxUpOz9a1M8vH5LZlHsuEqnI2pQAC2f
X-Proofpoint-GUID: _TxUpOz9a1M8vH5LZlHsuEqnI2pQAC2f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-14_11,2023-06-14_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 adultscore=0
 impostorscore=0 suspectscore=0 phishscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306140142
X-Rspamd-Queue-Id: 0F9BA44350
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.168.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:26211, ipnet:205.220.168.0/24, country:US];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	URIBL_BLOCKED(0.00)[linux.com:email,amd.com:email];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CYKC6TRRDUDCRJUKLNGTAS536WDK7BWV
X-Message-ID-Hash: CYKC6TRRDUDCRJUKLNGTAS536WDK7BWV
X-MailFrom: quic_jhugo@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: ogabbay@kernel.org, linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Jeffrey Hugo <quic_jhugo@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] accel/qaic: Call DRM helper function to destroy prime GEM
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CYKC6TRRDUDCRJUKLNGTAS536WDK7BWV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUHJhbmphbCBSYW1ham9yIEFzaGEgS2Fub2ppeWEgPHF1aWNfcGthbm9qaXlAcXVpY2lu
Yy5jb20+DQoNCnNtYXRjaCB3YXJuaW5nOg0KCWRyaXZlcnMvYWNjZWwvcWFpYy9xYWljX2RhdGEu
Yzo2MjAgcWFpY19mcmVlX29iamVjdCgpIGVycm9yOg0KCQlkZXJlZmVyZW5jaW5nIGZyZWVkIG1l
bW9yeSAnb2JqLT5pbXBvcnRfYXR0YWNoJw0KDQpvYmotPmltcG9ydF9hdHRhY2ggaXMgZGV0YWNo
ZWQgYW5kIGZyZWVkIHVzaW5nIGRtYV9idWZfZGV0YWNoKCkuDQpCdXQgdXNlZCBhZnRlciBmcmVl
IHRvIGRlY3JlYXNlIHRoZSBkbWFidWYgcmVmIGNvdW50IHVzaW5nDQpkbWFfYnVmX3B1dCgpLg0K
DQpkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koKSBoYW5kbGVzIHRoaXMgaXNzdWUgYW5kIHBlcmZvcm1z
IHRoZSBwcm9wZXIgY2xlYW4NCnVwIGluc3RlYWQgb2Ygb3BlbiBjb2RpbmcgaXQgaW4gdGhlIGRy
aXZlci4NCg0KRml4ZXM6IGZmMTNiZTgzMDMzMyAoImFjY2VsL3FhaWM6IEFkZCBkYXRhcGF0aCIp
DQpSZXBvcnRlZC1ieTogU3VrcnV0IEJlbGxhcnkgPHN1a3J1dC5iZWxsYXJ5QGxpbnV4LmNvbT4N
CkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMwNjEwMDIxMjAwLjM3NzQ1
Mi0xLXN1a3J1dC5iZWxsYXJ5QGxpbnV4LmNvbS8NClN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9mZi1ieTogUHJhbmphbCBS
YW1ham9yIEFzaGEgS2Fub2ppeWEgPHF1aWNfcGthbm9qaXlAcXVpY2luYy5jb20+DQpSZXZpZXdl
ZC1ieTogQ2FybCBWYW5kZXJsaXAgPHF1aWNfY2FybHZAcXVpY2luYy5jb20+DQpSZXZpZXdlZC1i
eTogSmVmZnJleSBIdWdvIDxxdWljX2podWdvQHF1aWNpbmMuY29tPg0KU2lnbmVkLW9mZi1ieTog
SmVmZnJleSBIdWdvIDxxdWljX2podWdvQHF1aWNpbmMuY29tPg0KLS0tDQogZHJpdmVycy9hY2Nl
bC9xYWljL3FhaWNfZGF0YS5jIHwgNCArKy0tDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvcWFpYy9x
YWljX2RhdGEuYyBiL2RyaXZlcnMvYWNjZWwvcWFpYy9xYWljX2RhdGEuYw0KaW5kZXggZTQyYzFm
OWZmZmY4Li5lOWExY2I3NzliMzAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2FjY2VsL3FhaWMvcWFp
Y19kYXRhLmMNCisrKyBiL2RyaXZlcnMvYWNjZWwvcWFpYy9xYWljX2RhdGEuYw0KQEAgLTIzLDYg
KzIzLDcgQEANCiAjaW5jbHVkZSA8bGludXgvd2FpdC5oPg0KICNpbmNsdWRlIDxkcm0vZHJtX2Zp
bGUuaD4NCiAjaW5jbHVkZSA8ZHJtL2RybV9nZW0uaD4NCisjaW5jbHVkZSA8ZHJtL2RybV9wcmlt
ZS5oPg0KICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQogI2luY2x1ZGUgPHVhcGkvZHJtL3Fh
aWNfYWNjZWwuaD4NCiANCkBAIC02MTYsOCArNjE3LDcgQEAgc3RhdGljIHZvaWQgcWFpY19mcmVl
X29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCiANCiAJaWYgKG9iai0+aW1wb3J0
X2F0dGFjaCkgew0KIAkJLyogRE1BQlVGL1BSSU1FIFBhdGggKi8NCi0JCWRtYV9idWZfZGV0YWNo
KG9iai0+aW1wb3J0X2F0dGFjaC0+ZG1hYnVmLCBvYmotPmltcG9ydF9hdHRhY2gpOw0KLQkJZG1h
X2J1Zl9wdXQob2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFidWYpOw0KKwkJZHJtX3ByaW1lX2dlbV9k
ZXN0cm95KG9iaiwgTlVMTCk7DQogCX0gZWxzZSB7DQogCQkvKiBQcml2YXRlIGJ1ZmZlciBhbGxv
Y2F0aW9uIHBhdGggKi8NCiAJCXFhaWNfZnJlZV9zZ3QoYm8tPnNndCk7DQotLSANCjIuNDAuMQ0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
