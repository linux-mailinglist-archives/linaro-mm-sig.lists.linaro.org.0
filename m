Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A224731C65
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Jun 2023 17:23:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 724AB3F0D0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Jun 2023 15:23:30 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 3CFE23EC7B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Jun 2023 15:23:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=RdCwfsYj;
	dmarc=pass (policy=none) header.from=quicinc.com;
	spf=pass (lists.linaro.org: domain of quic_jhugo@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_jhugo@quicinc.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35F99SZ9021244;
	Thu, 15 Jun 2023 15:23:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=lXDkh9Ioj/i7AsHQRhCycsHoCHLy67EWMphr83ltGGI=;
 b=RdCwfsYjnF9UiZ4GTkB9hwF5RXvAze7t4zsH/5jnRTw2pxilvUETCOy37abS6JiCY06o
 tb8fJFoL4SfulhFSnSTorWCyKa7LiEUO3BHdWylfovmsZYDqSjw0ZOUcElFTLpv5PIyY
 KWsoIte2cjyeM6RwHt0ash5rbDmxSuhQYyPzFmiUYd2kFFuNKRI+wIKt6KIzw1xuXKQu
 SvvZoCaablB9NFyBARLw6chgFx/dVRSzp2zwuS/Yf/zHGKCyVT6cIpIjm5EoxqL0GiMe
 P9pr8VMmP5wnjn2kbsDjN6Kt4yx8FcLFn25pHRC0HdudaCum1VbCqRmu0RepI+MVWFLf Tw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r7u8c9hsf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 15:23:09 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35FFN8Zs002629
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 15:23:08 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Thu, 15 Jun
 2023 08:23:07 -0700
Message-ID: <af6fb581-42c7-2619-82ce-8bd590ec629e@quicinc.com>
Date: Thu, 15 Jun 2023 09:23:06 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
        <quic_carlv@quicinc.com>, <quic_pkanojiy@quicinc.com>,
        <sukrut.bellary@linux.com>, <sumit.semwal@linaro.org>
References: <20230614161528.11710-1-quic_jhugo@quicinc.com>
 <87ce15c9-670e-f270-94b7-580b0a54f59f@amd.com>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <87ce15c9-670e-f270-94b7-580b0a54f59f@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: hUxM7iksB7MhaGd6cTFMcjdglreF6WMh
X-Proofpoint-GUID: hUxM7iksB7MhaGd6cTFMcjdglreF6WMh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-15_11,2023-06-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 mlxlogscore=868 malwarescore=0
 phishscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306150134
X-Rspamd-Queue-Id: 3CFE23EC7B
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[129.46.96.20:received];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.168.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	RCVD_IN_DNSWL_LOW(-0.10)[205.220.168.131:from];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:26211, ipnet:205.220.168.0/24, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[quicinc.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[205.220.168.131:server fail];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KRPZ64BTWG2626WTZ3HW7Y2L23XLOW4X
X-Message-ID-Hash: KRPZ64BTWG2626WTZ3HW7Y2L23XLOW4X
X-MailFrom: quic_jhugo@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: ogabbay@kernel.org, linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] accel/qaic: Call DRM helper function to destroy prime GEM
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KRPZ64BTWG2626WTZ3HW7Y2L23XLOW4X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gNi8xNS8yMDIzIDE6MDUgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IA0KPiANCj4g
QW0gMTQuMDYuMjMgdW0gMTg6MTUgc2NocmllYiBKZWZmcmV5IEh1Z286DQo+PiBGcm9tOiBQcmFu
amFsIFJhbWFqb3IgQXNoYSBLYW5vaml5YSA8cXVpY19wa2Fub2ppeUBxdWljaW5jLmNvbT4NCj4+
DQo+PiBzbWF0Y2ggd2FybmluZzoNCj4+IMKgwqDCoMKgZHJpdmVycy9hY2NlbC9xYWljL3FhaWNf
ZGF0YS5jOjYyMCBxYWljX2ZyZWVfb2JqZWN0KCkgZXJyb3I6DQo+PiDCoMKgwqDCoMKgwqDCoCBk
ZXJlZmVyZW5jaW5nIGZyZWVkIG1lbW9yeSAnb2JqLT5pbXBvcnRfYXR0YWNoJw0KPj4NCj4+IG9i
ai0+aW1wb3J0X2F0dGFjaCBpcyBkZXRhY2hlZCBhbmQgZnJlZWQgdXNpbmcgZG1hX2J1Zl9kZXRh
Y2goKS4NCj4+IEJ1dCB1c2VkIGFmdGVyIGZyZWUgdG8gZGVjcmVhc2UgdGhlIGRtYWJ1ZiByZWYg
Y291bnQgdXNpbmcNCj4+IGRtYV9idWZfcHV0KCkuDQo+Pg0KPj4gZHJtX3ByaW1lX2dlbV9kZXN0
cm95KCkgaGFuZGxlcyB0aGlzIGlzc3VlIGFuZCBwZXJmb3JtcyB0aGUgcHJvcGVyIGNsZWFuDQo+
PiB1cCBpbnN0ZWFkIG9mIG9wZW4gY29kaW5nIGl0IGluIHRoZSBkcml2ZXIuDQo+Pg0KPj4gRml4
ZXM6IGZmMTNiZTgzMDMzMyAoImFjY2VsL3FhaWM6IEFkZCBkYXRhcGF0aCIpDQo+PiBSZXBvcnRl
ZC1ieTogU3VrcnV0IEJlbGxhcnkgPHN1a3J1dC5iZWxsYXJ5QGxpbnV4LmNvbT4NCj4+IENsb3Nl
czogDQo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzA2MTAwMjEyMDAuMzc3NDUy
LTEtc3VrcnV0LmJlbGxhcnlAbGludXguY29tLyANCj4+DQo+PiBTdWdnZXN0ZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6
IFByYW5qYWwgUmFtYWpvciBBc2hhIEthbm9qaXlhIDxxdWljX3BrYW5vaml5QHF1aWNpbmMuY29t
Pg0KPj4gUmV2aWV3ZWQtYnk6IENhcmwgVmFuZGVybGlwIDxxdWljX2Nhcmx2QHF1aWNpbmMuY29t
Pg0KPj4gUmV2aWV3ZWQtYnk6IEplZmZyZXkgSHVnbyA8cXVpY19qaHVnb0BxdWljaW5jLmNvbT4N
Cj4+IFNpZ25lZC1vZmYtYnk6IEplZmZyZXkgSHVnbyA8cXVpY19qaHVnb0BxdWljaW5jLmNvbT4N
Cj4gDQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQoNClRoYW5rcyBmb3IgdGhlIGd1aWRhbmNlIGFuZCByZXZpZXchDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
