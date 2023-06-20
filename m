Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8C4736E82
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jun 2023 16:18:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 651FC3EB81
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jun 2023 14:18:02 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id DCF353EB81
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jun 2023 14:17:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=b4eirrkB;
	spf=pass (lists.linaro.org: domain of quic_jhugo@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_jhugo@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35KBLueM020164;
	Tue, 20 Jun 2023 14:17:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=EF/KLh/vr02DqncFcz84OcH5fXVmt70cnGcVY1/nMns=;
 b=b4eirrkBUDknc7I74lTDAMrGqG9fD2ieOURAz3F/gj/5AvWfe4PfokOFyI1yLzWCkmP3
 TKnYVUwRVMtuOGsdU4YY2YKYuno+Zu7ZEI2VMXhwQWjkeMFoFFZ2rcFjuhCLW1gHZz9C
 KjAPjIWLs9/7xI/rbNB02oiZ1gtocuQ8CP/n7KSE80lBAOLu3g3YYQKOh18KV9c06RKt
 4txM1IHMOC9aa3MmOthrZyvG/DgUDQHNSKm+tSrrqqg0TUPp2B4Pp3+kDfGmE+XpjZOi
 /SF3Ivg/QPIh3YHcbIrAQ6SzjPvWCz14KMQgX2tOMZkXzedKj/A5j9ICh5+pq/dfAMVT /Q==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rarx8tb2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Jun 2023 14:17:34 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35KEHWpv010964
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Jun 2023 14:17:32 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 20 Jun
 2023 07:17:31 -0700
Message-ID: <01ec9084-a3c4-82c6-90ae-1460b8b284b1@quicinc.com>
Date: Tue, 20 Jun 2023 08:17:31 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: <quic_carlv@quicinc.com>, <quic_pkanojiy@quicinc.com>,
        <christian.koenig@amd.com>, <sukrut.bellary@linux.com>,
        <sumit.semwal@linaro.org>
References: <20230614161528.11710-1-quic_jhugo@quicinc.com>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <20230614161528.11710-1-quic_jhugo@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 0XT9GN57nPD0HgguXT1khJ8iYVG-0oEk
X-Proofpoint-ORIG-GUID: 0XT9GN57nPD0HgguXT1khJ8iYVG-0oEk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-20_10,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 mlxlogscore=851 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 mlxscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306200129
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	DKIM_TRACE(0.00)[quicinc.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DCF353EB81
X-Spamd-Bar: ---
Message-ID-Hash: 3RGSJLZ4MCDFJKSGMHH237GUOH7W6U2M
X-Message-ID-Hash: 3RGSJLZ4MCDFJKSGMHH237GUOH7W6U2M
X-MailFrom: quic_jhugo@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: ogabbay@kernel.org, linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] accel/qaic: Call DRM helper function to destroy prime GEM
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3RGSJLZ4MCDFJKSGMHH237GUOH7W6U2M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gNi8xNC8yMDIzIDEwOjE1IEFNLCBKZWZmcmV5IEh1Z28gd3JvdGU6DQo+IEZyb206IFByYW5q
YWwgUmFtYWpvciBBc2hhIEthbm9qaXlhIDxxdWljX3BrYW5vaml5QHF1aWNpbmMuY29tPg0KPiAN
Cj4gc21hdGNoIHdhcm5pbmc6DQo+IAlkcml2ZXJzL2FjY2VsL3FhaWMvcWFpY19kYXRhLmM6NjIw
IHFhaWNfZnJlZV9vYmplY3QoKSBlcnJvcjoNCj4gCQlkZXJlZmVyZW5jaW5nIGZyZWVkIG1lbW9y
eSAnb2JqLT5pbXBvcnRfYXR0YWNoJw0KPiANCj4gb2JqLT5pbXBvcnRfYXR0YWNoIGlzIGRldGFj
aGVkIGFuZCBmcmVlZCB1c2luZyBkbWFfYnVmX2RldGFjaCgpLg0KPiBCdXQgdXNlZCBhZnRlciBm
cmVlIHRvIGRlY3JlYXNlIHRoZSBkbWFidWYgcmVmIGNvdW50IHVzaW5nDQo+IGRtYV9idWZfcHV0
KCkuDQo+IA0KPiBkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koKSBoYW5kbGVzIHRoaXMgaXNzdWUgYW5k
IHBlcmZvcm1zIHRoZSBwcm9wZXIgY2xlYW4NCj4gdXAgaW5zdGVhZCBvZiBvcGVuIGNvZGluZyBp
dCBpbiB0aGUgZHJpdmVyLg0KPiANCj4gRml4ZXM6IGZmMTNiZTgzMDMzMyAoImFjY2VsL3FhaWM6
IEFkZCBkYXRhcGF0aCIpDQo+IFJlcG9ydGVkLWJ5OiBTdWtydXQgQmVsbGFyeSA8c3VrcnV0LmJl
bGxhcnlAbGludXguY29tPg0KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDIzMDYxMDAyMTIwMC4zNzc0NTItMS1zdWtydXQuYmVsbGFyeUBsaW51eC5jb20vDQo+IFN1Z2dl
c3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBQcmFuamFsIFJhbWFqb3IgQXNoYSBLYW5vaml5YSA8cXVpY19wa2Fub2pp
eUBxdWljaW5jLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IENhcmwgVmFuZGVybGlwIDxxdWljX2Nhcmx2
QHF1aWNpbmMuY29tPg0KPiBSZXZpZXdlZC1ieTogSmVmZnJleSBIdWdvIDxxdWljX2podWdvQHF1
aWNpbmMuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmcmV5IEh1Z28gPHF1aWNfamh1Z29AcXVp
Y2luYy5jb20+DQoNClB1c2hlZCB0byBkcm0tbWlzYy1maXhlcw0KDQotSmVmZg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
