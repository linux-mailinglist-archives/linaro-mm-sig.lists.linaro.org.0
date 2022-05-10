Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1367B52ED2A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 15:33:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C7B14046B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 13:33:00 +0000 (UTC)
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
	by lists.linaro.org (Postfix) with ESMTPS id 5235B47FA6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 17:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652202861; x=1683738861;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=83162g9zxtcfDjx2nWTNvvkXPY5uRoho8j7OS99ySF8=;
  b=aosI5TvhuLwLKBWFXyA4X3UGCFk83FMw9ffWM73KAL8BGTqZoH3XBNGu
   9KCMcsv4S8EKOs1AZ+NVVe+zVHcPAaeaDx4enE/4XN3D/I3Nsro9E0xG/
   B0XzgG3GX59VbgjDIm6wz6EagQbCSlHm+VcSL0pNlmZQ07w2CuBJSTt2i
   I=;
Received: from ironmsg-lv-alpha.qualcomm.com ([10.47.202.13])
  by alexa-out.qualcomm.com with ESMTP; 10 May 2022 10:14:20 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg-lv-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2022 10:14:20 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 10:14:19 -0700
Received: from [10.216.42.221] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 10 May
 2022 10:14:14 -0700
Message-ID: <6dc59fa7-5885-9ed1-54c3-f2d112786312@quicinc.com>
Date: Tue, 10 May 2022 22:44:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
	<gregkh@linuxfoundation.org>, <sumit.semwal@linaro.org>, <hridya@google.com>,
	<daniel.vetter@ffwll.ch>, <tjmercier@google.com>
References: <1652191562-18700-1-git-send-email-quic_charante@quicinc.com>
 <4ac55be2-7d55-2c3b-0d5e-f61c02c62792@amd.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <4ac55be2-7d55-2c3b-0d5e-f61c02c62792@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FCFJPC4GX4PMOR3JIEQRO5QKDWXQC6SJ
X-Message-ID-Hash: FCFJPC4GX4PMOR3JIEQRO5QKDWXQC6SJ
X-Mailman-Approved-At: Fri, 20 May 2022 13:32:56 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V2] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FCFJPC4GX4PMOR3JIEQRO5QKDWXQC6SJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8xMC8yMDIyIDg6NDIgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiDCoMKgICog
VGhlIGluZm9ybWF0aW9uIGluIHRoZSBpbnRlcmZhY2UgY2FuIGFsc28gYmUgdXNlZCB0byBkZXJp
dmUNCj4+IHBlci1leHBvcnRlcg0KPj4gwqDCoCAqIHN0YXRpc3RpY3MuIFRoZSBkYXRhIGZyb20g
dGhlIGludGVyZmFjZSBjYW4gYmUgZ2F0aGVyZWQgb24gZXJyb3INCj4+IGNvbmRpdGlvbnMNCj4+
IEBAIC0xNzIsNiArMTcyLDcgQEAgaW50IGRtYV9idWZfc3RhdHNfc2V0dXAoc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZikNCj4+IMKgIHsNCj4+IMKgwqDCoMKgwqAgc3RydWN0IGRtYV9idWZfc3lzZnNf
ZW50cnkgKnN5c2ZzX2VudHJ5Ow0KPj4gwqDCoMKgwqDCoCBpbnQgcmV0Ow0KPj4gK8KgwqDCoCBz
dGF0aWMgYXRvbWljNjRfdCB1bmlxdWVfaWQgPSBBVE9NSUNfSU5JVCgwKTsNCj4gDQo+IFBsZWFz
ZSBtb3ZlIHRoYXQgdG8gdGhlIGJlZ2lubmluZyBvZiB0aGUgZGVjbGFyYXRpb25zLg0KPiANCg0K
RG9uZS4gQW55IHNjcmlwdHMgSSBjYW4gcnVuIGF0IG15IGVuZCB0byBjYXRjaCB0aGVzZSB0eXBl
IG9mIHRyaXZpYWwNCmNoYW5nZXM/IGNoZWNrcGF0Y2gucGwgZGlkbid0IHJlcG9ydCB0aGlzIGNv
ZGluZyBzdHlsZS4NCg0KPj4gwqAgwqDCoMKgwqDCoCBpZiAoIWRtYWJ1ZiB8fCAhZG1hYnVmLT5m
aWxlKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOw0KPj4gQEAgLTE5Miw3
ICsxOTMsOCBAQCBpbnQgZG1hX2J1Zl9zdGF0c19zZXR1cChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
KQ0KPj4gwqAgwqDCoMKgwqDCoCAvKiBjcmVhdGUgdGhlIGRpcmVjdG9yeSBmb3IgYnVmZmVyIHN0
YXRzICovDQo+PiDCoMKgwqDCoMKgIHJldCA9IGtvYmplY3RfaW5pdF9hbmRfYWRkKCZzeXNmc19l
bnRyeS0+a29iaiwgJmRtYV9idWZfa3R5cGUsDQo+PiBOVUxMLA0KPj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiJWx1IiwgZmlsZV9pbm9kZShkbWFidWYtPmZpbGUpLT5p
X2lubyk7DQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIlbHUtJWx1
IiwgZmlsZV9pbm9kZShkbWFidWYtPmZpbGUpLT5pX2lubywNCj4gDQo+IFdoeSBub3QganVzdCB1
c2UgdGhlIHVuaXF1ZSB2YWx1ZSBoZXJlPyBPciBpcyB0aGUgaW5vZGUgbnVtYmVyIG5lY2Vzc2Fy
eQ0KPiBmb3Igc29tZXRoaW5nPw0KDQpUaGlzIHdpbGwgZWFzZSB0aGUgZGVidWdnaW5nIGEgbG90
LiBHaXZlbiB0aGUgZHVtcCwgSSBjYW4gZWFzaWx5IG1hcA0Kd2hpY2ggZG1hYnVmIGJ1ZmZlciB0
byB0aGUgcHJvY2Vzcy4gT24gdGhlIGNyYXNodXRpbHR5IEkganVzdCBoYXZlIHRvDQpzZWFyY2gg
Zm9yIHRoaXMgaW5vZGUgaW4gdGhlIGZpbGVzIG91dHB1dCwganVzdCBvbmUgZXhhbXBsZS4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
