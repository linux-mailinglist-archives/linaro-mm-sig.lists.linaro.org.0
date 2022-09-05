Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1035AD7B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Sep 2022 18:39:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2158B48A11
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Sep 2022 16:39:49 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id DD1AD3F601
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Sep 2022 16:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662395984; x=1693931984;
  h=message-id:date:mime-version:subject:to:references:from:
   in-reply-to:content-transfer-encoding;
  bh=UYJEY/SQG8QDZBOYJJY4nO80O+kbgOS3Lid6Gc+CEbQ=;
  b=BYApqGDERhmgvnZzi9qnGyWk9VVBll9nTDMypCM77FaphwpTT8EBf6Vh
   KhwCG+WTblBJvfs4T/Vb8Vanl/WH2D1fuz1BwbrRO7GIg0VgLHoGW2ePv
   dIBW7GUX5ZNvuWFaQPY65QjGQPzrG8fAZeyvHO7xUe73HZ1xh1f7Kx5i+
   3bRY3e5XupQVuInqFb7bMnK3xFpeOhTTZDjrolSIARq2uTHGeYydd+3dj
   9BaCLvKV9FsS2S+zXBAUzeGHK4dsBGcvsdLwao0kp5NXo+wtYBdZaHOCd
   wiNLnAamelaz0MgGF8RiCqpSmumjCjfTeXkslEWv1ZTGpHZZVsujgeTx5
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="294008416"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200";
   d="scan'208";a="294008416"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2022 09:39:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200";
   d="scan'208";a="675346621"
Received: from hpigot-mobl1.ger.corp.intel.com (HELO [10.213.237.107]) ([10.213.237.107])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2022 09:39:40 -0700
Message-ID: <3c702549-75f4-c640-9f9c-37d7fcbb1645@linux.intel.com>
Date: Mon, 5 Sep 2022 17:39:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220905105653.13670-1-Arvind.Yadav@amd.com>
 <20220905105653.13670-2-Arvind.Yadav@amd.com>
 <0038fcff-35f1-87e3-aa26-cdd104a13628@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <0038fcff-35f1-87e3-aa26-cdd104a13628@amd.com>
Message-ID-Hash: 3X2XY6IRUUQRF264MFVLG6WENP32G5KI
X-Message-ID-Hash: 3X2XY6IRUUQRF264MFVLG6WENP32G5KI
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3X2XY6IRUUQRF264MFVLG6WENP32G5KI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAwNS8wOS8yMDIyIDEyOjIxLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAwNS4w
OS4yMiB1bSAxMjo1NiBzY2hyaWViIEFydmluZCBZYWRhdjoNCj4+IFRoZSBjb3JlIERNQS1idWYg
ZnJhbWV3b3JrIG5lZWRzIHRvIGVuYWJsZSBzaWduYWxpbmcNCj4+IGJlZm9yZSB0aGUgZmVuY2Ug
aXMgc2lnbmFsZWQuIFRoZSBjb3JlIERNQS1idWYgZnJhbWV3b3JrDQo+PiBjYW4gZm9yZ2V0IHRv
IGVuYWJsZSBzaWduYWxpbmcgYmVmb3JlIHRoZSBmZW5jZSBpcyBzaWduYWxlZC4NCj4+IFRvIGF2
b2lkIHRoaXMgc2NlbmFyaW8gb24gdGhlIGRlYnVnIGtlcm5lbCwgY2hlY2sgdGhlDQo+PiBETUFf
RkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCBzdGF0dXMgYml0IGJlZm9yZSBjaGVja2luZw0K
Pj4gdGhlIHNpZ25hbGluZyBiaXQgc3RhdHVzIHRvIGNvbmZpcm0gdGhhdCBlbmFibGVfc2lnbmFs
aW5nDQo+PiBpcyBlbmFibGVkLg0KPiANCj4gWW91IG1pZ2h0IHdhbnQgdG8gcHV0IHRoaXMgcGF0
Y2ggYXQgdGhlIGVuZCBvZiB0aGUgc2VyaWVzIHRvIGF2b2lkIA0KPiBicmVha2luZyB0aGUga2Vy
bmVsIGluIGJldHdlZW4uDQo+IA0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8
QXJ2aW5kLllhZGF2QGFtZC5jb20+DQo+PiAtLS0NCj4+IMKgIGluY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggfCA1ICsrKysrDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+
Pg0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQo+PiBpbmRleCA3NzVjZGMwYjRmMjQuLjYwYzBlOTM1YzBiNSAxMDA2
NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+ICsrKyBiL2luY2x1ZGUv
bGludXgvZG1hLWZlbmNlLmgNCj4+IEBAIC00MjgsNiArNDI4LDExIEBAIGRtYV9mZW5jZV9pc19z
aWduYWxlZF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSANCj4+ICpmZW5jZSkNCj4+IMKgIHN0YXRp
YyBpbmxpbmUgYm9vbA0KPj4gwqAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQ0KPj4gwqAgew0KPj4gKyNpZmRlZiBDT05GSUdfREVCVUdfRlMNCj4gDQo+IENP
TkZJR19ERUJVR19GUyBpcyBjZXJ0YWlubHkgd3JvbmcsIHByb2JhYmx5IGJldHRlciB0byBjaGVj
ayBmb3IgDQo+IENPTkZJR19ERUJVR19XV19NVVRFWF9TTE9XUEFUSCBoZXJlLg0KPiANCj4gQXBh
cnQgZnJvbSB0aGF0IGxvb2tzIGdvb2QgdG8gbWUsDQoNCldoYXQncyB0aGUgZnVsbCBzdG9yeSBp
biB0aGlzIHNlcmllcyAtIEknbSBhZnJhaWQgdGhlIGNvdmVyIGxldHRlciBkb2VzIG5vdCBtYWtl
IGl0IGNsZWFyIHRvIGEgY2FzdWFsIHJlYWRlciBsaWtlIG15c2VsZj8gV2hlcmUgZG9lcyB0aGUg
ZGlmZmVyZW5jZSBiZXR3ZWVuIGRlYnVnIGFuZCBub24gZGVidWcga2VybmVsIGNvbWUgZnJvbT8N
Cg0KQW5kIGhvdyBkbyB0aGUgcHJvcG9zZWQgY2hhbmdlcyByZWxhdGUgdG8gdGhlIGZvbGxvd2lu
ZyBrZXJuZWxkb2MgZXhjZXJwdDoNCg0KCSAqIFNpbmNlIG1hbnkgaW1wbGVtZW50YXRpb25zIGNh
biBjYWxsIGRtYV9mZW5jZV9zaWduYWwoKSBldmVuIHdoZW4gYmVmb3JlDQoJICogQGVuYWJsZV9z
aWduYWxpbmcgaGFzIGJlZW4gY2FsbGVkIHRoZXJlJ3MgYSByYWNlIHdpbmRvdywgd2hlcmUgdGhl
DQoJICogZG1hX2ZlbmNlX3NpZ25hbCgpIG1pZ2h0IHJlc3VsdCBpbiB0aGUgZmluYWwgZmVuY2Ug
cmVmZXJlbmNlIGJlaW5nDQoJICogcmVsZWFzZWQgYW5kIGl0cyBtZW1vcnkgZnJlZWQuIFRvIGF2
b2lkIHRoaXMsIGltcGxlbWVudGF0aW9ucyBvZiB0aGlzDQoJICogY2FsbGJhY2sgc2hvdWxkIGdy
YWIgdGhlaXIgb3duIHJlZmVyZW5jZSB1c2luZyBkbWFfZmVuY2VfZ2V0KCksIHRvIGJlDQoJICog
cmVsZWFzZWQgd2hlbiB0aGUgZmVuY2UgaXMgc2lnbmFsbGVkICh0aHJvdWdoIGUuZy4gdGhlIGlu
dGVycnVwdA0KCSAqIGhhbmRsZXIpLg0KCSAqDQoJICogVGhpcyBjYWxsYmFjayBpcyBvcHRpb25h
bC4gSWYgdGhpcyBjYWxsYmFjayBpcyBub3QgcHJlc2VudCwgdGhlbiB0aGUNCgkgKiBkcml2ZXIg
bXVzdCBhbHdheXMgaGF2ZSBzaWduYWxpbmcgZW5hYmxlZC4NCg0KSXMgaXQgbm93IGFuIGVycm9y
LCBvciBzaG91bGQgYmUgaW1wb3NzaWJsZSBjb25kaXRpb24sIGZvciAiaXMgc2lnbmFsZWQiIHRv
IHJldHVybiB0cnVlIF91bmxlc3NfIHNpZ25hbGluZyBoYXMgYmVlbiBlbmFibGVkPw0KDQpJZiB0
aGUgc3RhdGVtZW50IChpbiBhIGxhdGVyIHBhdGNoKSBpcyBzaWduYWxsaW5nIHNob3VsZCBhbHdh
eXMgYmUgZXhwbGljaXRseSBlbmFibGVkIGJ5IHRoZSBjYWxsZXJzIG9mIGRtYV9mZW5jZV9hZGRf
Y2FsbGJhY2ssIHRoZW4gd2hhdCBhYm91dCB0aGUgZXhpc3RpbmcgY2FsbCB0byBfX2RtYV9mZW5j
ZV9lbmFibGVfc2lnbmFsaW5nIGZyb20gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaz8NCg0KT3IgaWYg
dGhlIHJ1bGVzIGFyZSBjaGFuZ2luZyBzaG91bGRuJ3Qga2VybmVsZG9jIGJlIHVwZGF0ZWQgYXMg
cGFydCBvZiB0aGUgc2VyaWVzPw0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KPiBDaHJpc3RpYW4u
DQo+IA0KPj4gK8KgwqDCoCBpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdO
QUxfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7
DQo+PiArI2VuZGlmDQo+PiArDQo+PiDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0Vf
RkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiB0cnVlOw0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
