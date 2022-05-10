Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBFA52ED1F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 15:31:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96098410C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 13:31:26 +0000 (UTC)
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
	by lists.linaro.org (Postfix) with ESMTPS id CBFC13E81F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 12:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652185019; x=1683721019;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=JJaaWuWc8sV2e51bEleyOQg6zUB2DlPf9YjM1Nke9to=;
  b=OA1GhaYqHFPwcNkqHyp/vz55cymG5OaITuzPr2HsYsyltsGb0GBZyM1l
   AfLl4fWe3SiHd6CBBN6SPJ/8i2aiO5a/Em9TBHV8woGHflsstrj5B8+fO
   AlaTTli7lp4zVAgvicLGXa6UA113DL2RhNQwvi/eIv+p08JPncawsL7dE
   g=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 10 May 2022 05:16:59 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2022 05:16:58 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 05:16:58 -0700
Received: from [10.216.42.221] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 10 May
 2022 05:16:54 -0700
Message-ID: <cf3a80e3-301d-7c61-54ab-d63fd355dd48@quicinc.com>
Date: Tue, 10 May 2022 17:46:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Greg KH
	<gregkh@linuxfoundation.org>
References: <1652178212-22383-1-git-send-email-quic_charante@quicinc.com>
 <YnpF1XP1tH83uBlM@kroah.com> <039e1acc-8688-2e06-1b2a-1acbe813b91e@amd.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <039e1acc-8688-2e06-1b2a-1acbe813b91e@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XCCLSV3OCY4FANS4B4ANGKK3RXGEGPM2
X-Message-ID-Hash: XCCLSV3OCY4FANS4B4ANGKK3RXGEGPM2
X-Mailman-Approved-At: Fri, 20 May 2022 13:31:20 +0000
CC: sumit.semwal@linaro.org, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XCCLSV3OCY4FANS4B4ANGKK3RXGEGPM2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIENocmlzdGlhbiBmb3IgdGhlIGlucHV0cyEhDQoNCk9uIDUvMTAvMjAyMiA1OjA1IFBN
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiANCj4+IEFuZCB3aGF0J3MgdG8ga2VlcCB0aGUg
c2Vjb25kcyBmaWVsZCBmcm9tIGFsc28gYmVpbmcgdGhlIHNhbWU/DQo+IA0KPiBXZWxsIGV4cG9y
dGluZyB0d28gRE1BLWJ1ZnMgd2l0aCB0aGUgc2FtZSBpbm8gaW4gdGhlIHNhbWUgbmFub3NlY29u
ZA0KPiBzaG91bGQgYmUgYmFzaWNhbGx5IGltcG9zc2libGUsIGJ1dCBJIHdvdWxkIHJhdGhlciBv
cHQgZm9yIHVzaW5nIGEgNjRiaXQNCj4gYXRvbWljIGluIHRoYXQgZnVuY3Rpb24uDQo+IA0KPiBU
aGlzIHNob3VsZCBiZSAxMDAlIFVBUEkgY29tcGF0aWJsZSBhbmQgZXZlbiBpZiB3ZSBtYW5hZ2Ug
dG8gY3JlYXRlIG9uZQ0KPiBidWZmZXIgZXZlciBucyB3ZSBuZWVkIH41MDB5ZWFycyB0byB3cmFw
IGFyb3VuZC4NCg0KSSBzZWUgdGhhdCB0aGUgaW5vZGUtPmlfY3RpbWUtPnR2X3NlYyBpcyBhbHJl
YWR5IGRlZmluZWQgYXMNCjY0Yml0KHRpbWU2NF90IHR2X3NlYyksIGhlbmNlIHVzZWQgaXQuIFRo
aXMgd2F5IHdlIGRvbid0IG5lZWQgZXh0cmENCnN0YXRpYyBhdG9taWNfdCB2YXJpYWJsZSBqdXN0
IHRvIGdldCBhIHVuaXF1ZSBuYW1lLg0KDQpKdXN0IHBhc3RpbmcgZXhjZXJwdCBmcm9tIHRoZSBy
ZXBseSBwb3N0ZWQgdG8gR3JlZyBhYm91dCB3aHkgdGhpcyBzZWNzDQp3aWxsIGFsd2F5cyBiZSBh
IHVuaXF1ZTogd2l0aCBzZWNzIGZpZWxkIGFkZGVkLCB0byBnZXQgdGhlIHNhbWUNCmlub2RlLXNl
Y3Mgc3RyaW5nLCB0aGUgdWludCBzaG91bGQgb3ZlcmZsb3cgaW4gdGhlIHNhbWUgc2Vjb25kIHdo
aWNoIGlzDQppbXBvc3NpYmxlLg0KDQpMZXQgbWUga25vdyBJZiB5b3Ugc3RpbGwgb3B0IGZvciBh
dG9taWMgdmFyaWFibGUgb25seS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
