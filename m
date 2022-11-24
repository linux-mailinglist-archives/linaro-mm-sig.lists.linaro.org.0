Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C616637212
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 06:56:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22ACF3EE95
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 05:56:47 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 5E1F13EE40
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 05:56:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=Ur+VmzCr;
	spf=pass (lists.linaro.org: domain of quic_charante@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_charante@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AO5tbJl009648;
	Thu, 24 Nov 2022 05:56:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=gV1s/n59+1kKN/YjZCnpmoFDdlD0T+C0z++WOr3yzO0=;
 b=Ur+VmzCrh/y4q61GMGzWtJgxUrSobW3Gl3cnGXAfqi2+8wz/oEn9T3pNOC/k+Ew9NDpZ
 DG8EDOfFd03Xxjdiv8UNTLkAh7BRrFLowKUk2C3nFCfaXLDDEwppRS2idMEgPvbvqE+L
 J75Heo//5HiwXQ6WgBsnTj4JlsRDJSe159O8ca9GNzLnaMKLStdVnixUEn13Ya4pXkFZ
 I9RH0QQuPKN6hPAeYv6z4xUk3eHvmTCuTH0XbuYKwA6FDRZH2E34SAqAHVdBLmmpvosp
 J8hTZkBcBMYbsrq/9mVzS/adqs9UI1+L8rM4mP040We0vGehNXu6O2noZi7AIG8GKpt9 DA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3m0nsjej4b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Nov 2022 05:56:26 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 2AO5uPbg008605
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Nov 2022 05:56:25 GMT
Received: from [10.216.7.69] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Wed, 23 Nov
 2022 21:56:22 -0800
Message-ID: <e12784da-b3e3-ddec-0e84-f968d60097c4@quicinc.com>
Date: Thu, 24 Nov 2022 11:26:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
        "T.J.
 Mercier" <tjmercier@google.com>
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
 <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
 <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
 <2c9fa595-e788-5474-4f2b-ffbd08a70d13@amd.com>
 <CABdmKX0KJJV0iQwy0aUNXcLc1DGyLjmh6_Y53asHEoh-uyHzAA@mail.gmail.com>
 <83944425-c177-7918-bcde-9cf7296a613f@amd.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <83944425-c177-7918-bcde-9cf7296a613f@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: r7PIAzdpzzrBI2xJHJ1wBGLjZqJQ_tCy
X-Proofpoint-ORIG-GUID: r7PIAzdpzzrBI2xJHJ1wBGLjZqJQ_tCy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-24_03,2022-11-23_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211240045
X-Rspamd-Queue-Id: 5E1F13EE40
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mx0b-0031df01.pphosted.com:rdns,mx0b-0031df01.pphosted.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mx0b-0031df01.pphosted.com:rdns,mx0b-0031df01.pphosted.com:helo];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VSMPVVTSECM2MC6ZHO7DRRCAVUIC42ZH
X-Message-ID-Hash: VSMPVVTSECM2MC6ZHO7DRRCAVUIC42ZH
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Gaosheng Cui <cuigaosheng1@huawei.com>, sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VSMPVVTSECM2MC6ZHO7DRRCAVUIC42ZH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIFQuSiBhbmQgQ2hyaXN0aWFuIGZvciB0aGUgaW5wdXRzLg0KDQpPbiAxMS8xOS8yMDIy
IDc6MDAgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pg0KPj4gwqDCoMKgIFllcywgZXhh
Y3RseSB0aGF0J3MgdGhlIGlkZWEuDQo+Pg0KPj4gwqDCoMKgIFRoZSBvbmx5IGFsdGVybmF0aXZl
cyBJIGNhbiBzZWUgd291bGQgYmUgdG8gZWl0aGVyIG1vdmUgYWxsb2NhdGluZw0KPj4gwqDCoMKg
IHRoZQ0KPj4gwqDCoMKgIGZpbGUgYW5kIHNvIGNvbXBsZXRpbmcgdGhlIGRtYV9idWYgaW5pdGlh
bGl6YXRpb24gbGFzdCBhZ2FpbiBvciBqdXN0DQo+PiDCoMKgwqAgaWdub3JlIGVycm9ycyBmcm9t
IHN5c2ZzLg0KPj4NCj4+IMKgwqDCoCA+IElmIHdlIHN0aWxsIHdhbnQgdG8gYXZvaWQgY2FsbGlu
ZyBkbWFidWYtPm9wcy0+cmVsZWFzZShkbWFidWYpIGluDQo+PiDCoMKgwqAgPiBkbWFfYnVmX3Jl
bGVhc2UgbGlrZSB0aGUgY29tbWVudCBzYXlzIEkgZ3Vlc3Mgd2UgY291bGQgdXNlDQo+PiDCoMKg
wqAgc3lzZnNfZW50cnkNCj4+IMKgwqDCoCA+IGFuZCBFUlJfUFRSIHRvIGZsYWcgdGhhdCwgb3Ro
ZXJ3aXNlIGl0IGxvb2tzIGxpa2Ugd2UnZCBuZWVkIGEgYml0DQo+PiDCoMKgwqAgPiBzb21ld2hl
cmUuDQo+Pg0KPj4gwqDCoMKgIE5vLCB0aGlzIHNob3VsZCBiZSBkcm9wcGVkIGFzIGZhciBhcyBJ
IGNhbiBzZWUuIFRoZSBzeXNmcyBjbGVhbnVwDQo+PiDCoMKgwqAgY29kZQ0KPj4gwqDCoMKgIGxv
b2tzIGxpa2UgaXQgY2FuIGhhbmRsZSBub3QgaW5pdGlhbGl6ZWQga29iaiBwb2ludGVycy4NCj4+
DQo+Pg0KPj4gWWVhaCB0aGVyZSBpcyBhbHNvIHRoZSBudWxsIGNoZWNrIGluIGRtYV9idWZfc3Rh
dHNfdGVhcmRvd24oKSB0aGF0DQo+PiB3b3VsZCBwcmV2ZW50IGl0IGZyb20gcnVubmluZywgYnV0
IEkgdW5kZXJzdG9vZCB0aGUgY29tbWVudCB0byBiZQ0KPj4gcmVmZXJyaW5nIHRvIHRoZSByZWxl
YXNlKCkgZG1hX2J1Zl9vcHMgY2FsbCBpbnRvIHRoZSBleHBvcnRlciB3aGljaA0KPj4gY29tZXMg
cmlnaHQgYWZ0ZXIgdGhlIHRlYXJkb3duIGNhbGwuIFRoYXQgbG9va3MgbGlrZSBpdCdzIHByZXZl
bnRpbmcNCj4+IHRoZSBmcHV0IHRhc2sgd29yayBjYWxsaW5nIGJhY2sgaW50byB0aGUgZXhwb3J0
ZXIgYWZ0ZXIgdGhlIGV4cG9ydGVyDQo+PiBhbHJlYWR5IGdvdCBhbiBlcnJvciBmcm9tIGRtYV9i
dWZfZXhwb3J0KCkuIE90aGVyd2lzZSB0aGUgZXhwb3J0ZXINCj4+IHNlZXMgYSByZWxlYXNlKCkg
Zm9yIGEgYnVmZmVyIHRoYXQgaXQgZG9lc24ndCBrbm93IGFib3V0IC8gdGhpbmtzDQo+PiBzaG91
bGRuJ3QgZXhpc3QuIFNvIEkgY291bGQgaW1hZ2luZSBhbiBleHBvcnRlciB0cnlpbmcgdG8gZG91
YmxlIGZyZWU6DQo+PiBvbmNlIGZvciB0aGUgZmFpbGVkIGRtYV9idWZfZXhwb3J0KCkgY2FsbCwg
YW5kIGFnYWluIHdoZW4gdGhlDQo+PiByZWxlYXNlKCkgb3AgaXMgY2FsbGVkIGxhdGVyLg0KPiAN
Cj4gDQo+IE9oLCB2ZXJ5IGdvb2QgcG9pbnQgYXMgd2VsbC4gWWVhaCwgdGhlbiBjcmVhdGluZyB0
aGUgZmlsZSBzaG91bGQNCj4gcHJvYmFibHkgY29tZSBsYXN0Lg0KPiANCg0KQEdhb3NoZW5nOiBD
b3VsZCB5b3UgcGxlYXNlIG1ha2UgdGhlc2UgY2hhbmdlcyBvciB5b3UgbGV0IG1lIHRvIGRvPw0K
DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
