Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB4ED0FAF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Oct 2019 15:10:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EE80616F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Oct 2019 13:10:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F2973618EF; Wed,  9 Oct 2019 13:10:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5933618D6;
	Wed,  9 Oct 2019 13:10:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AD416616F8
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Oct 2019 13:10:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9EF61618D6; Wed,  9 Oct 2019 13:10:13 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 59AFF616F8
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Oct 2019 13:10:12 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id o18so2874056wrv.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Oct 2019 06:10:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=vzaTTrF4KJIoLtgxoj5PluvZsZC/0i3InXaG/lQH1VA=;
 b=e9ZDMD0zADnxA7CZakaqYFwI64Soqrz3JDtf4Wb0IiXPz1jsAZ8XsYM0wGP0yTrYqX
 AcwhiI8LpGV2gT6Kri0t6cA7e1+aZQMm3H7DR6crApAUx8QHst74Z93Z0OYCQ9S4EChM
 4JIppWZKrSXjC+xyWVemcIxJkedPk1HqMp+jGmFwZI+k/gWDoE8DxSa6f/GwmfcflI/B
 0Ug1ABat0I8cSXOUk+GkZEQ5X1n1ZzKqg/S8rSnzxyz192tcZWRy341CfK6R0HNDTFKo
 HkhEU0k3N/gOR4Ht85xAL+wxhS7nvlR4zxGonhCAYN/wMGvwZERmFSB71/apV8LUg2KD
 oOdg==
X-Gm-Message-State: APjAAAUObA9P7rt5GBdZnTSEwFoCqfQfR+74BYBEfUbbjmye90Kohw4t
 aRKAZZcADW1/EUV2lOA4iwY=
X-Google-Smtp-Source: APXvYqyUsoeQL71x6y1pF4VHQfKQaKru0b/PZKZyqJoIWa5aQSip6LHZ4aCzy10h821zYOyXbBUF3Q==
X-Received: by 2002:adf:814d:: with SMTP id 71mr2969304wrm.193.1570626611493; 
 Wed, 09 Oct 2019 06:10:11 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id a2sm3526687wrt.45.2019.10.09.06.10.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 09 Oct 2019 06:10:10 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20190829142917.13058-1-christian.koenig@amd.com>
 <20190829142917.13058-3-christian.koenig@amd.com>
 <20191008092552.GG16989@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <d36c1631-1262-8c73-e62b-bbbddb708f1e@gmail.com>
Date: Wed, 9 Oct 2019 15:10:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008092552.GG16989@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] drm/ttm: use the parent resv for
	ghost objects v2
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDguMTAuMTkgdW0gMTE6MjUgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFRodSwgQXVn
IDI5LCAyMDE5IGF0IDA0OjI5OjE1UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFRoaXMgd2F5IHdlIGNhbiBldmVuIHBpcGVsaW5lIGltcG9ydGVkIEJPIGV2aWN0aW9ucy4KPj4K
Pj4gdjI6IExpbWl0IHRoaXMgdG8gb25seSBjYXNlcyB3aGVuIHRoZSBwYXJlbnQgb2JqZWN0IHVz
ZXMgYSBzZXBhcmF0ZQo+PiAgICAgIHJlc2VydmF0aW9uIG9iamVjdCBhcyB3ZWxsLiBUaGlzIGZp
eGVzIGFub3RoZXIgT09NIHByb2JsZW0uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBTaW5jZSBJIHJlYWQgcXVpdGUgYSBi
aXQgb2YgdHRtIEkgZmlndXJlZCBJJ2xsIHJldmlldyB0aGlzIHRvbywgYnV0IEknbQo+IHRvdGFs
bHkgbG9zdC4gQW5kIGdpdCBibGFtZSBnaXZlcyBtZSBhdCBiZXN0IGNvbW1pdHMgd2l0aCBvbmUt
bGluZXIgY29tbWl0Cj4gbWVzc2FnZXMsIGFuZCB0aGUgZG9jcyBhcmVuJ3QgZXhwbGFpbmluZyBt
dWNoIGF0IGFsbCBlaXRoZXIgKGFuZCBnZW5lcmFsbHkKPiB0aGV5IGRpZG4ndCBnZXQgdXBkYXRl
ZCBhdCBhbGwgd2l0aCBhbGwgdGhlIGNoYW5nZXMgaW4gdGhlIHBhc3QgeWVhcnMpLgo+Cj4gSSBo
YXZlIGEgdmFndWUgaWRlYSBvZiB3aGF0IHlvdSdyZSBkb2luZyBoZXJlLCBidXQgbm90IGVub3Vn
aCB0byBkbyByZXZpZXcKPiB3aXRoIGFueSBjb25maWRlbmNlLiBBbmQgZnJvbSBvdGhlciB0dG0g
cGF0Y2hlcyBmcm9tIGFtZCBpdCBmZWVscyBhIGxvdAo+IGxpa2Ugd2UgaGF2ZSBlc3NlbnRpYWxs
eSBhIGJ1cyBmYWN0b3Igb2YgMSBmb3IgYWxsIHRoaW5ncyB0dG0gOi0vCgpZZWFoLCB0aGF0J3Mg
b25lIG9mIGEgY291cGxlIG9mIHJlYXNvbnMgd2h5IEkgd2FudCB0byBnZXQgcmlkIG9mIFRUTSBp
biAKdGhlIGxvbmcgdGVybS4KCkJhc2ljYWxseSB0aGlzIGlzIGEgYnVnIGZpeCBmb3IgZGVsYXkg
ZnJlZWluZyB0dG0gb2JqZWN0cy4gV2hlbiB3ZSBoYW5nIAp0aGUgdHRtIG9iamVjdCBvbiBhIGdo
b3N0IG9iamVjdCB0byBiZSBmcmVlZCBhbmQgdGhlIHR0bSBvYmplY3QgaXMgYW4gCmltcG9ydGVk
IERNQS1idWYgd2UgcnVuIGludG8gdGhlIHByb2JsZW0gdGhhdCB3ZSB3YW50IHRvIGRyb3AgdGhl
IAptYXBwaW5nLCBidXQgaGF2ZSB0aGUgd3JvbmcgbG9jayB0YWtlbiAodGhlIGxvY2sgb2YgdGhl
IGdob3N0IGFuZCBub3Qgb2YgCnRoZSBwYXJlbnQpLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPiAt
RGFuaWVsCj4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jIHwg
MTYgKysrKysrKysrLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDcgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib191dGlsLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKPj4gaW5kZXgg
ZmU4MWM1NjVlN2VmLi4yZWJlOWZlN2Y2YzggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS90dG0vdHRtX2JvX3V0aWwuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191
dGlsLmMKPj4gQEAgLTUxNyw3ICs1MTcsOSBAQCBzdGF0aWMgaW50IHR0bV9idWZmZXJfb2JqZWN0
X3RyYW5zZmVyKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+ICAgCWtyZWZfaW5pdCgm
ZmJvLT5iYXNlLmtyZWYpOwo+PiAgIAlmYm8tPmJhc2UuZGVzdHJveSA9ICZ0dG1fdHJhbnNmZXJl
ZF9kZXN0cm95Owo+PiAgIAlmYm8tPmJhc2UuYWNjX3NpemUgPSAwOwo+PiAtCWZiby0+YmFzZS5i
YXNlLnJlc3YgPSAmZmJvLT5iYXNlLmJhc2UuX3Jlc3Y7Cj4+ICsJaWYgKGJvLT5iYXNlLnJlc3Yg
PT0gJmJvLT5iYXNlLl9yZXN2KQo+PiArCQlmYm8tPmJhc2UuYmFzZS5yZXN2ID0gJmZiby0+YmFz
ZS5iYXNlLl9yZXN2Owo+PiArCj4+ICAgCWRtYV9yZXN2X2luaXQoZmJvLT5iYXNlLmJhc2UucmVz
dik7Cj4+ICAgCXJldCA9IGRtYV9yZXN2X3RyeWxvY2soZmJvLT5iYXNlLmJhc2UucmVzdik7Cj4+
ICAgCVdBUk5fT04oIXJldCk7Cj4+IEBAIC03MTYsNyArNzE4LDcgQEAgaW50IHR0bV9ib19tb3Zl
X2FjY2VsX2NsZWFudXAoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPj4gICAJCWlmIChy
ZXQpCj4+ICAgCQkJcmV0dXJuIHJldDsKPj4gICAKPj4gLQkJZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVu
Y2UoZ2hvc3Rfb2JqLT5iYXNlLnJlc3YsIGZlbmNlKTsKPj4gKwkJZG1hX3Jlc3ZfYWRkX2V4Y2xf
ZmVuY2UoJmdob3N0X29iai0+YmFzZS5fcmVzdiwgZmVuY2UpOwo+PiAgIAo+PiAgIAkJLyoqCj4+
ICAgCQkgKiBJZiB3ZSdyZSBub3QgbW92aW5nIHRvIGZpeGVkIG1lbW9yeSwgdGhlIFRUTSBvYmpl
Y3QKPj4gQEAgLTcyOSw3ICs3MzEsNyBAQCBpbnQgdHRtX2JvX21vdmVfYWNjZWxfY2xlYW51cChz
dHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+PiAgIAkJZWxzZQo+PiAgIAkJCWJvLT50dG0g
PSBOVUxMOwo+PiAgIAo+PiAtCQl0dG1fYm9fdW5yZXNlcnZlKGdob3N0X29iaik7Cj4+ICsJCWRt
YV9yZXN2X3VubG9jaygmZ2hvc3Rfb2JqLT5iYXNlLl9yZXN2KTsKPj4gICAJCXR0bV9ib19wdXQo
Z2hvc3Rfb2JqKTsKPj4gICAJfQo+PiAgIAo+PiBAQCAtNzcyLDcgKzc3NCw3IEBAIGludCB0dG1f
Ym9fcGlwZWxpbmVfbW92ZShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+PiAgIAkJaWYg
KHJldCkKPj4gICAJCQlyZXR1cm4gcmV0Owo+PiAgIAo+PiAtCQlkbWFfcmVzdl9hZGRfZXhjbF9m
ZW5jZShnaG9zdF9vYmotPmJhc2UucmVzdiwgZmVuY2UpOwo+PiArCQlkbWFfcmVzdl9hZGRfZXhj
bF9mZW5jZSgmZ2hvc3Rfb2JqLT5iYXNlLl9yZXN2LCBmZW5jZSk7Cj4+ICAgCj4+ICAgCQkvKioK
Pj4gICAJCSAqIElmIHdlJ3JlIG5vdCBtb3ZpbmcgdG8gZml4ZWQgbWVtb3J5LCB0aGUgVFRNIG9i
amVjdAo+PiBAQCAtNzg1LDcgKzc4Nyw3IEBAIGludCB0dG1fYm9fcGlwZWxpbmVfbW92ZShzdHJ1
Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+PiAgIAkJZWxzZQo+PiAgIAkJCWJvLT50dG0gPSBO
VUxMOwo+PiAgIAo+PiAtCQl0dG1fYm9fdW5yZXNlcnZlKGdob3N0X29iaik7Cj4+ICsJCWRtYV9y
ZXN2X3VubG9jaygmZ2hvc3Rfb2JqLT5iYXNlLl9yZXN2KTsKPj4gICAJCXR0bV9ib19wdXQoZ2hv
c3Rfb2JqKTsKPj4gICAKPj4gICAJfSBlbHNlIGlmIChmcm9tLT5mbGFncyAmIFRUTV9NRU1UWVBF
X0ZMQUdfRklYRUQpIHsKPj4gQEAgLTg0MSw3ICs4NDMsNyBAQCBpbnQgdHRtX2JvX3BpcGVsaW5l
X2d1dHRpbmcoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykKPj4gICAJaWYgKHJldCkKPj4g
ICAJCXJldHVybiByZXQ7Cj4+ICAgCj4+IC0JcmV0ID0gZG1hX3Jlc3ZfY29weV9mZW5jZXMoZ2hv
c3QtPmJhc2UucmVzdiwgYm8tPmJhc2UucmVzdik7Cj4+ICsJcmV0ID0gZG1hX3Jlc3ZfY29weV9m
ZW5jZXMoJmdob3N0LT5iYXNlLl9yZXN2LCBiby0+YmFzZS5yZXN2KTsKPj4gICAJLyogTGFzdCBy
ZXNvcnQsIHdhaXQgZm9yIHRoZSBCTyB0byBiZSBpZGxlIHdoZW4gd2UgYXJlIE9PTSAqLwo+PiAg
IAlpZiAocmV0KQo+PiAgIAkJdHRtX2JvX3dhaXQoYm8sIGZhbHNlLCBmYWxzZSk7Cj4+IEBAIC04
NTAsNyArODUyLDcgQEAgaW50IHR0bV9ib19waXBlbGluZV9ndXR0aW5nKHN0cnVjdCB0dG1fYnVm
ZmVyX29iamVjdCAqYm8pCj4+ICAgCWJvLT5tZW0ubWVtX3R5cGUgPSBUVE1fUExfU1lTVEVNOwo+
PiAgIAliby0+dHRtID0gTlVMTDsKPj4gICAKPj4gLQl0dG1fYm9fdW5yZXNlcnZlKGdob3N0KTsK
Pj4gKwlkbWFfcmVzdl91bmxvY2soJmdob3N0LT5iYXNlLl9yZXN2KTsKPj4gICAJdHRtX2JvX3B1
dChnaG9zdCk7Cj4+ICAgCj4+ICAgCXJldHVybiAwOwo+PiAtLSAKPj4gMi4xNy4xCj4+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
