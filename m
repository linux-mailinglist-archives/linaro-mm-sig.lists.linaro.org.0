Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3755E571B2E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 15:27:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EF814795B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 13:27:19 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id C33443F2F8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 13:27:15 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id sz17so14294872ejc.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 06:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=omKDGKrDnZ/IkPXT5RBomOOPrYkiPKJbtYb6UMrNSaM=;
        b=TdIaTQTUpJe1Qw/zD95bu1yP1ZupdD6IiMyhad4UyI1OuxFJ2RWEVQXV6yPb0tat+I
         e9KgLx+90JCtfHZgNqv1WXvRgyzvc9Im/j3q1Oy5f+xbPluB41jYJbEVkhte0mN/3Ooh
         X2KSsTRVRO1BR9AS7JvKV6kEPhjiRCBNBcrBlJi1Brn6VqHGN2cYs8WEGumBrNu68GSV
         FpQSMxE9Vn4MYm4KMjvc5V6j7K2rPgJKntgD4zngMfwPBy3F418VvH6n2dFxxa8GQW1n
         QD6NknDzPlnCASKL3zadtNcKd/aC0AYe/w7B+bgTG0B8I1063JlPu9mQbfQpgZTbnxfE
         yTZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=omKDGKrDnZ/IkPXT5RBomOOPrYkiPKJbtYb6UMrNSaM=;
        b=FYF0iTWFMJJHlWsiuzMlsQqoE/iWEN8s4eqUXWxI7e08v8EbBU0IiwbDRzNiVwEaZG
         ep3mJY6ZNg3JWUaxwGfiq3EqNJ0k0Y0i6O8lpy25NY4mlny+IefDI/OaU0ms74OUe/VK
         SbkwrMmUrfZAtzMhhMZxHK9cHmzpaY25s7MlOLaJofaMzqIAVeL6TbmM+1b1Yu0kpAH/
         IlRRXnNNKnGzfNoLVDdCnB5N/q0HL8UY+Mql4HDsZhjlOuhVpft+IKneaGoiJBHaQycU
         cCbALUuwIfGndQGAwZVwa64DN7j7JcQxeQCy3LziMKGbGp6fnB6lV5Jo9vkUx4s0ZUNX
         L6XQ==
X-Gm-Message-State: AJIora+RvEdDjE1RPmWMp/WYZxN75gRccf+6TE4PkvvlQ9eCMW/7//LZ
	zBHVTFmfCG94lN+xTbldF/RVjkDFd/O1cy1AMAcbxgPE
X-Google-Smtp-Source: AGRyM1vOjvHM7mJAaDS7p1aTNG5U9p4boViVosKcsmm6k5RlVqpv6fPQo4roJps+C/WvQc7z+WABdeKSoMHsgw7D5EY=
X-Received: by 2002:a17:907:2888:b0:72b:8f41:1405 with SMTP id
 em8-20020a170907288800b0072b8f411405mr168023ejc.564.1657632434858; Tue, 12
 Jul 2022 06:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220712102849.1562-1-christian.koenig@amd.com>
 <6570e584-7ddc-4029-0555-276020750dd2@intel.com> <f4804bb1-4f0e-2755-6b00-8aa0ba1c5c90@amd.com>
In-Reply-To: <f4804bb1-4f0e-2755-6b00-8aa0ba1c5c90@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 12 Jul 2022 09:27:03 -0400
Message-ID: <CADnq5_Mv=4G1qb7J7a2nm=7cVWSbRxrRBBNKpaeajKOj_cGp3g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: Z6BE5JVH5XEI3H5RVRYGREQOAA42ZVDZ
X-Message-ID-Hash: Z6BE5JVH5XEI3H5RVRYGREQOAA42ZVDZ
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Karolina Drobnik <karolina.drobnik@intel.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z6BE5JVH5XEI3H5RVRYGREQOAA42ZVDZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdWwgMTIsIDIwMjIgYXQgODowNiBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gSGkgS2Fyb2xpbmEsDQo+DQo+IEFtIDEy
LjA3LjIyIHVtIDE0OjA0IHNjaHJpZWIgS2Fyb2xpbmEgRHJvYm5pazoNCj4gPiBIaSBDaHJpc3Rp
YW4sDQo+ID4NCj4gPiBPbiAxMi4wNy4yMDIyIDEyOjI4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiA+PiBUaGlzIHJldmVydHMgY29tbWl0IDhmNjE5NzM3MTg0ODVmM2U4OWJjNGY0MDhmOTI5
MDQ4YjdiNDdjODMuDQo+ID4+DQo+ID4+IEl0IHR1cm5lZCBvdXQgdGhhdCB0aGlzIGlzIG5vdCBj
b3JyZWN0LiBFc3BlY2lhbGx5IHRoZSBzeW5jX2ZpbGUgaW5mbw0KPiA+PiBJT0NUTCBuZWVkcyB0
byBzZWUgZXZlbiBzaWduYWxlZCBmZW5jZXMgdG8gY29ycmVjdGx5IHJlcG9ydCBiYWNrIHRoZWly
DQo+ID4+IHN0YXR1cyB0byB1c2Vyc3BhY2UuDQo+ID4+DQo+ID4+IEluc3RlYWQgYWRkIHRoZSBm
aWx0ZXIgaW4gdGhlIG1lcmdlIGZ1bmN0aW9uIGFnYWluIHdoZXJlIGl0IG1ha2VzIHNlbnNlLg0K
PiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQo+ID4NCj4gPiBBZnRlciBhcHBseWluZyB0aGUgcGF0Y2gsIGZlbmNlIG1l
cmdpbmcgd29ya3MgYW5kIGFsbCBzd19zeW5jIHN1YnRlc3RzDQo+ID4gYXJlIHBhc3NpbmcuIFRo
YW5rcyBmb3IgdGFraW5nIGNhcmUgb2YgdGhpcy4NCj4gPg0KPiA+IFRlc3RlZC1ieTogS2Fyb2xp
bmEgRHJvYm5payA8a2Fyb2xpbmEuZHJvYm5pa0BpbnRlbC5jb20+DQo+DQo+IGNhbiBhbnlib2R5
IGdpdmUgbWUgYW4gcmIgb3IgYXQgbGVhc3QgYW4gQWNrZWQtYnkgYXMgd2VsbCBzbyB0aGF0IEkg
Y2FuDQo+IHB1c2ggdGhpcyB1cHN0cmVhbT8NCg0KUGF0Y2ggbWFrZXMgc2Vuc2UuDQoNClJldmll
d2VkLWJ5OiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+DQoNCj4NCj4g
VGhhbmtzLA0KPiBDaHJpc3RpYW4uDQo+DQo+ID4NCj4gPj4gLS0tDQo+ID4+ICAgZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyB8IDMgKystDQo+ID4+ICAgaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtdW53cmFwLmggICB8IDYgKy0tLS0tDQo+ID4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+ID4+IGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS11bndyYXAuYw0KPiA+PiBpbmRleCA1MDJhNjVlYTZkNDQuLjcwMDJiY2E3OTJm
ZiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0K
PiA+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+ID4+IEBAIC03
Miw3ICs3Miw4IEBAIHN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZSh1
bnNpZ25lZA0KPiA+PiBpbnQgbnVtX2ZlbmNlcywNCj4gPj4gICAgICAgY291bnQgPSAwOw0KPiA+
PiAgICAgICBmb3IgKGkgPSAwOyBpIDwgbnVtX2ZlbmNlczsgKytpKSB7DQo+ID4+ICAgICAgICAg
ICBkbWFfZmVuY2VfdW53cmFwX2Zvcl9lYWNoKHRtcCwgJml0ZXJbaV0sIGZlbmNlc1tpXSkNCj4g
Pj4gLSAgICAgICAgICAgICsrY291bnQ7DQo+ID4+ICsgICAgICAgICAgICBpZiAoIWRtYV9mZW5j
ZV9pc19zaWduYWxlZCh0bXApKQ0KPiA+PiArICAgICAgICAgICAgICAgICsrY291bnQ7DQo+ID4+
ICAgICAgIH0NCj4gPj4gICAgICAgICBpZiAoY291bnQgPT0gMCkNCj4gPj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+ID4+IGIvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtdW53cmFwLmgNCj4gPj4gaW5kZXggMzkwZGUxZWU5ZDM1Li42NmIxZTU2ZmJiODEg
MTAwNjQ0DQo+ID4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+ID4+
ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+ID4+IEBAIC00MywxNCAr
NDMsMTAgQEAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KHN0cnVjdA0K
PiA+PiBkbWFfZmVuY2VfdW53cmFwICpjdXJzb3IpOw0KPiA+PiAgICAqIFVud3JhcCBkbWFfZmVu
Y2VfY2hhaW4gYW5kIGRtYV9mZW5jZV9hcnJheSBjb250YWluZXJzIGFuZCBkZWVwDQo+ID4+IGRp
dmUgaW50byBhbGwNCj4gPj4gICAgKiBwb3RlbnRpYWwgZmVuY2VzIGluIHRoZW0uIElmIEBoZWFk
IGlzIGp1c3QgYSBub3JtYWwgZmVuY2Ugb25seQ0KPiA+PiB0aGF0IG9uZSBpcw0KPiA+PiAgICAq
IHJldHVybmVkLg0KPiA+PiAtICoNCj4gPj4gLSAqIE5vdGUgdGhhdCBzaWduYWxsZWQgZmVuY2Vz
IGFyZSBvcHBvcnR1bmlzdGljYWxseSBmaWx0ZXJlZCBvdXQsIHdoaWNoDQo+ID4+IC0gKiBtZWFu
cyB0aGUgaXRlcmF0aW9uIGlzIHBvdGVudGlhbGx5IG92ZXIgbm8gZmVuY2UgYXQgYWxsLg0KPiA+
PiAgICAqLw0KPiA+PiAgICNkZWZpbmUgZG1hX2ZlbmNlX3Vud3JhcF9mb3JfZWFjaChmZW5jZSwg
Y3Vyc29yLCBoZWFkKSAgICAgICAgICAgIFwNCj4gPj4gICAgICAgZm9yIChmZW5jZSA9IGRtYV9m
ZW5jZV91bndyYXBfZmlyc3QoaGVhZCwgY3Vyc29yKTsgZmVuY2U7ICAgIFwNCj4gPj4gLSAgICAg
ICAgIGZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KGN1cnNvcikpICAgICAgICAgICAgXA0K
PiA+PiAtICAgICAgICBpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQo+ID4+ICsg
ICAgICAgICBmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfbmV4dChjdXJzb3IpKQ0KPiA+PiAgICAg
c3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKHVuc2lnbmVkIGludCBu
dW1fZmVuY2VzLA0KPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5j
ZSAqKmZlbmNlcywNCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
