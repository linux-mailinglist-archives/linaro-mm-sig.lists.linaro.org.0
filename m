Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A3D5323E0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:18:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 225BE3F8CB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:18:04 +0000 (UTC)
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
	by lists.linaro.org (Postfix) with ESMTPS id CA019404BB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 10:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652438339; x=1683974339;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=wgMVjWhvJhoWOt/KHhALzY1JWO2Y10o5k6lUReCLpcY=;
  b=Mf+RuqLgbWs/HkVSzdgSvL4Fvjx0otQSfQYf5jqac4J5Vu1M8XQF8rum
   HnnyUhgxc1jDZhjUbUUvX2dyc/C1IdeCh9xSO3YjupY35GFELDqvx+3WJ
   cwdDZ+6Zk8DgYu5TQ/Pe5t8uXMppU2CatDFywJzTRRClosvRJ1l0MvSv4
   o=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 13 May 2022 03:38:59 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2022 03:38:58 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 13 May 2022 03:38:57 -0700
Received: from [10.214.30.67] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Fri, 13 May
 2022 03:38:54 -0700
Message-ID: <f5988884-ba0a-643c-e920-6ae626bb67a1@quicinc.com>
Date: Fri, 13 May 2022 16:08:51 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Greg KH
	<gregkh@linuxfoundation.org>
References: <1652434689-6203-1-git-send-email-quic_charante@quicinc.com>
 <Yn4u0AG8iC33S3jO@kroah.com>
 <2a45f1e1-39d5-76b3-8fd3-c1f8b288afac@quicinc.com>
 <0071e117-1d91-b086-7cb1-976b2a1c3498@amd.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <0071e117-1d91-b086-7cb1-976b2a1c3498@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5NTZTGEWWSH2ZEBP6XKBY3MFWXYJAWP4
X-Message-ID-Hash: 5NTZTGEWWSH2ZEBP6XKBY3MFWXYJAWP4
X-Mailman-Approved-At: Tue, 24 May 2022 07:17:56 +0000
CC: sumit.semwal@linaro.org, hridya@google.com, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V3] dma-buf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5NTZTGEWWSH2ZEBP6XKBY3MFWXYJAWP4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpPbiA1LzEzLzIwMjIgMzo1OSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMTMu
MDUuMjIgdW0gMTI6MTggc2NocmllYiBDaGFyYW4gVGVqYSBLYWxsYToNCj4+IE9uIDUvMTMvMjAy
MiAzOjQxIFBNLCBHcmVnIEtIIHdyb3RlOg0KPj4+PiBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qg
cm9ib3QgPGxrcEBpbnRlbC5jb20+DQo+Pj4gVGhlIHRyZXN0IHJvYm90IGRpZCBub3Qgc2F5IHRo
YXQgdGhlIGRtYWJ1ZiBzdGF0IG5hbWUgd2FzIGJlaW5nDQo+Pj4gZHVwbGljYXRlZCwgZGlkIGl0
Pw0KPj4+DQo+PiBJdCByZXBvcnRlZCBhIHByaW50ayB3YXJuaW5nIG9uIFYyWzFdLiBTaG91bGQg
d2UgcmVtb3ZlIHRoaXMgb24gVjM/DQo+IA0KPiBXZSBvbmx5IGFkZCB0aGUga2VybmVsIHRlc3Qg
cm9ib3QgaXMgcmVwb3J0IHdoZW4gaXQgZm91bmQgdGhlIHVuZGVybHlpbmcNCj4gcHJvYmxlbSBh
bmQgbm90IGp1c3Qgbm90ZWQgc29tZSB3YXJuaW5nIG9uIGFuIGludGVybWVkaWF0ZSBwYXRjaCB2
ZXJzaW9uLg0KDQpOb3RlZC4gVGhhbmtzISENCj4gDQo+PiBAQ2hyaXN0aWFuOiBDb3VsZCB5b3Ug
cGxlYXNlIGRyb3AgdGhpcyB0YWcgd2hpbGUgbWVyZ2luZz8NCj4gDQo+IFN1cmUsIEkgZG9uJ3Qg
aGF2ZSBtdWNoIG9uIG15IHBsYXRlIGF0IHRoZSBtb21lbnQuIEJ1dCBkb24ndCBsZXQgaXQNCj4g
YmVjb21lIGEgaGFiaXQuDQo+IA0KDQpTdXJlLiBJIGFtIGFsc28gdGhpbmtpbmcgSWYgaXQgaXMg
d29ydGggdG8gYWRkIHN0YWJsZSB0YWc/IFRob3VnaCBpdCBpcw0Kbm90IGNyYXNoaW5nIHRoZSBr
ZXJuZWwgYnV0IGRlZmluaXRlbHkgbWFraW5nIHRoZSBkbWFfYnVmX2V4cG9ydCB0byBmYWlsDQpm
b3Igbm8gcmVhc29uLg0KDQpJZiB5ZXMsIEkgY2FuIHJlc2VuZCB0aGUgcGF0Y2ggd2l0aCBhbGwg
dGhlc2UgdGFncy4NCg0KPiBHb2luZyB0byBwdXNoIGl0IHVwc3RyZWFtIHRocm91Z2ggZHJtLW1p
c2MtZml4ZXMgbm93Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
