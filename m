Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2265EF11F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 11:01:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5CDD3F4C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 09:01:11 +0000 (UTC)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	by lists.linaro.org (Postfix) with ESMTPS id 4A0E53F0CB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 09:00:52 +0000 (UTC)
Received: by mail-vs1-f52.google.com with SMTP id j17so823197vsp.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 02:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Ir+IzupNAXvXvPBkZ1yh/qacu5xVXDJ2KC3L3ZMV+D4=;
        b=6aF58CnxhIbmp3x+RIQ8NB6II6qqJH5H/hQU0gn0xZ9eVQopkbq1gBb/ijFeQzHOZa
         RbJR2Q4T/21aPzS4S/DoU1ksYq78FpOn1+3u9qW8ruy7CMeFtEPUaC1inyrbIA1PB5PE
         9p8Q8u1249EucSgze5CElHchC2C3FMAL54T5ktWKJkUGXPyvfYI+HRpmtJ1VSzn5TojS
         8N5OeV3QEplrCynXzngDwe0GmmeZklweUOTzs1ggSEsV/MnnmyxhFV3JLEZCs43hWpqT
         dHGcDeFsIwUB/0TinccBYLZUWLGy7T6pR2InPR+FD1d3YlVX+R8BuGtKMKpuLB/fIGbN
         uQBA==
X-Gm-Message-State: ACrzQf1Rnom+xbIYCT1yPhajCaW+SYOlZvEAfpjXlVPi14Ogl1TCAbBU
	PYpI3NeMZ8doIjpaR4TGOChs2zoxCSmO6Q==
X-Google-Smtp-Source: AMsMyM4YuHV3q6t8UCjnw44VH/iOOPjOWILqk0CCffwa60FqwGXQ1+olBRy1zlpxkjLa39KLOAhmMw==
X-Received: by 2002:a67:c001:0:b0:39c:85e5:bccc with SMTP id v1-20020a67c001000000b0039c85e5bcccmr735393vsi.35.1664442051728;
        Thu, 29 Sep 2022 02:00:51 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id f21-20020a1f9c15000000b003a381c7064fsm1360922vke.51.2022.09.29.02.00.51
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 02:00:51 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id y20so254067uao.8
        for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 02:00:51 -0700 (PDT)
X-Received: by 2002:a5b:104:0:b0:6b0:429:3fe9 with SMTP id 4-20020a5b0104000000b006b004293fe9mr2016091ybx.543.1664442041163;
 Thu, 29 Sep 2022 02:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org> <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
 <202209281011.66DD717D@keescook> <874jwqfuh6.fsf@mpe.ellerman.id.au>
In-Reply-To: <874jwqfuh6.fsf@mpe.ellerman.id.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 29 Sep 2022 11:00:28 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVOvs4adSV7G6ucZ8dcr+RxfZOOK=jXeO2tEAaXkv80Xg@mail.gmail.com>
Message-ID: <CAMuHMdVOvs4adSV7G6ucZ8dcr+RxfZOOK=jXeO2tEAaXkv80Xg@mail.gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 4A0E53F0CB
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[geert@linux-m68k.org,geertuytterhoeven@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[40];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.52:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[linux-m68k.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,suse.cz,linux.com,kernel.org,google.com,lge.com,linux-foundation.org,linux.dev,gmail.com,kvack.org,intel.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,geertuytterhoeven@gmail.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of geert.uytterhoeven@gmail.com designates 209.85.217.52 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com;
	dmarc=none
Message-ID-Hash: UCFJOF3A3KIAZWVFCRDW5BJEX77RGSNF
X-Message-ID-Hash: UCFJOF3A3KIAZWVFCRDW5BJEX77RGSNF
X-MailFrom: geert.uytterhoeven@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <roman.gushchin@linux.dev>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Marco Elver <elver@google.com>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Miguel O
 jeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/16] slab: Remove __malloc attribute from realloc functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UCFJOF3A3KIAZWVFCRDW5BJEX77RGSNF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWljaGFlbCwNCg0KT24gVGh1LCBTZXAgMjksIDIwMjIgYXQgMTA6MzYgQU0gTWljaGFlbCBF
bGxlcm1hbiA8bXBlQGVsbGVybWFuLmlkLmF1PiB3cm90ZToNCj4gS2VlcyBDb29rIDxrZWVzY29v
a0BjaHJvbWl1bS5vcmc+IHdyaXRlczoNCj4gPiBPbiBXZWQsIFNlcCAyOCwgMjAyMiBhdCAwOToy
NjoxNUFNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6DQo+ID4+IE9uIEZyaSwgU2Vw
IDIzLCAyMDIyIGF0IDEwOjM1IFBNIEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPiB3
cm90ZToNCj4gPj4gPiBUaGUgX19tYWxsb2MgYXR0cmlidXRlIHNob3VsZCBub3QgYmUgYXBwbGll
ZCB0byAicmVhbGxvYyIgZnVuY3Rpb25zLCBhcw0KPiA+PiA+IHRoZSByZXR1cm5lZCBwb2ludGVy
IG1heSBhbGlhcyB0aGUgc3RvcmFnZSBvZiB0aGUgcHJpb3IgcG9pbnRlci4gSW5zdGVhZA0KPiA+
PiA+IG9mIHNwbGl0dGluZyBfX21hbGxvYyBmcm9tIF9fYWxsb2Nfc2l6ZSwgd2hpY2ggd291bGQg
YmUgYSBodWdlIGFtb3VudCBvZg0KPiA+PiA+IGNodXJuLCBqdXN0IGNyZWF0ZSBfX3JlYWxsb2Nf
c2l6ZSBmb3IgdGhlIGZldyBjYXNlcyB3aGVyZSBpdCBpcyBuZWVkZWQuDQo+ID4+ID4NCj4gPj4g
PiBBZGRpdGlvbmFsbHkgcmVtb3ZlcyB0aGUgY29uZGl0aW9uYWwgdGVzdCBmb3IgX19hbGxvY19z
aXplX18sIHdoaWNoIGlzDQo+ID4+ID4gYWx3YXlzIGRlZmluZWQgbm93Lg0KPiA+PiA+DQo+ID4+
ID4gQ2M6IENocmlzdG9waCBMYW1ldGVyIDxjbEBsaW51eC5jb20+DQo+ID4+ID4gQ2M6IFBla2th
IEVuYmVyZyA8cGVuYmVyZ0BrZXJuZWwub3JnPg0KPiA+PiA+IENjOiBEYXZpZCBSaWVudGplcyA8
cmllbnRqZXNAZ29vZ2xlLmNvbT4NCj4gPj4gPiBDYzogSm9vbnNvbyBLaW0gPGlhbWpvb25zb28u
a2ltQGxnZS5jb20+DQo+ID4+ID4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRh
dGlvbi5vcmc+DQo+ID4+ID4gQ2M6IFZsYXN0aW1pbCBCYWJrYSA8dmJhYmthQHN1c2UuY3o+DQo+
ID4+ID4gQ2M6IFJvbWFuIEd1c2hjaGluIDxyb21hbi5ndXNoY2hpbkBsaW51eC5kZXY+DQo+ID4+
ID4gQ2M6IEh5ZW9uZ2dvbiBZb28gPDQyLmh5ZXlvb0BnbWFpbC5jb20+DQo+ID4+ID4gQ2M6IE1h
cmNvIEVsdmVyIDxlbHZlckBnb29nbGUuY29tPg0KPiA+PiA+IENjOiBsaW51eC1tbUBrdmFjay5v
cmcNCj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9y
Zz4NCj4gPj4NCj4gPj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoLCB3aGljaCBpcyBub3cgY29tbWl0
IDYzY2FhMDRlYzYwNTgzYjEgKCJzbGFiOg0KPiA+PiBSZW1vdmUgX19tYWxsb2MgYXR0cmlidXRl
IGZyb20gcmVhbGxvYyBmdW5jdGlvbnMiKSBpbiBuZXh0LTIwMjIwOTI3Lg0KPiA+Pg0KPiA+PiBO
b3JlcGx5QGVsbGVybWFuLmlkLmF1IHJlcG9ydGVkIGFsbCBnY2M4LWJhc2VkIGJ1aWxkcyB0byBm
YWlsDQo+ID4+IChlLmcuIFsxXSwgbW9yZSBhdCBbMl0pOg0KPiA+Pg0KPiA+PiAgICAgSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIDxjb21tYW5kLWxpbmU+Og0KPiA+PiAgICAgLi9pbmNsdWRlL2xpbnV4
L3BlcmNwdS5oOiBJbiBmdW5jdGlvbiDigJhfX2FsbG9jX3Jlc2VydmVkX3BlcmNwdeKAmToNCj4g
Pj4gICAgIC4vLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6Mjc5OjMwOiBlcnJvcjog
ZXhwZWN0ZWQNCj4gPj4gZGVjbGFyYXRpb24gc3BlY2lmaWVycyBiZWZvcmUg4oCYX19hbGxvY19z
aXplX1/igJkNCj4gPj4gICAgICAjZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4LCAuLi4pIF9fYWxsb2Nf
c2l6ZV9fKHgsICMjIF9fVkFfQVJHU19fKSBfX21hbGxvYw0KPiA+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4NCj4gPj4gICAgIC4vaW5jbHVkZS9saW51
eC9wZXJjcHUuaDoxMjA6NzQ6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhfX2FsbG9j
X3NpemXigJkNCj4gPj4gICAgIFsuLi5dDQo+ID4+DQo+ID4+IEl0J3MgYnVpbGRpbmcgZmluZSB3
aXRoIGUuZy4gZ2NjLTkgKHdoaWNoIGlzIG15IHVzdWFsIG02OGsgY3Jvc3MtY29tcGlsZXIpLg0K
PiA+PiBSZXZlcnRpbmcgdGhpcyBjb21taXQgb24gbmV4dC0yMDIyMDkyNyBmaXhlcyB0aGUgaXNz
dWUuDQo+ID4+DQo+ID4+IFsxXSBodHRwOi8va2lzc2tiLmVsbGVybWFuLmlkLmF1L2tpc3NrYi9i
dWlsZHJlc3VsdC8xNDgwMzkwOC8NCj4gPj4gWzJdIGh0dHA6Ly9raXNza2IuZWxsZXJtYW4uaWQu
YXUva2lzc2tiL2hlYWQvMWJkOGI3NWZlNmFkZWFhODlkMDI5NjhiZGQ4MTFmZmU3MDhjZjgzOS8N
Cj4gPg0KPiA+IEVlayEgVGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cuIEknbSBjb25mdXNlZCBh
Ym91dCB0aGlzIC0tDQo+ID4gX19hbGxvY19zaXplX18gd2Fzbid0IG9wdGlvbmFsIGluIGNvbXBp
bGVyX2F0dHJpYnV0ZXMuaCAtLSBidXQgb2J2aW91c2x5DQo+ID4gSSBicm9rZSBzb21ldGhpbmch
IEknbGwgZ28gZmlndXJlIHRoaXMgb3V0Lg0KPg0KPiBUaGlzIGZpeGVzIGl0IGZvciBtZS4NCg0K
S2VlcyBzdWJtaXR0ZWQgYSBzaW1pbGFyIHBhdGNoIDIwIG1pbnV0ZXMgYmVmb3JlOg0KaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIwOTI5MDgxNjQyLjE5MzIyMDAtMS1rZWVzY29va0Bj
aHJvbWl1bS5vcmcNCg0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmgNCj4g
KysrIGIvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oDQo+IEBAIC0yNzUsOCArMjc1LDEz
IEBAIHN0cnVjdCBmdHJhY2VfbGlrZWx5X2RhdGEgew0KPiAgICogYmUgcGVyZm9ybWluZyBhIF9y
ZWFsbG9jYXRpb25fLCBhcyB0aGF0IG1heSBhbGlhcyB0aGUgZXhpc3RpbmcgcG9pbnRlci4NCj4g
ICAqIEZvciB0aGVzZSwgdXNlIF9fcmVhbGxvY19zaXplKCkuDQo+ICAgKi8NCj4gLSNkZWZpbmUg
X19hbGxvY19zaXplKHgsIC4uLikgICBfX2FsbG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykg
X19tYWxsb2MNCj4gLSNkZWZpbmUgX19yZWFsbG9jX3NpemUoeCwgLi4uKSBfX2FsbG9jX3NpemVf
Xyh4LCAjIyBfX1ZBX0FSR1NfXykNCj4gKyNpZmRlZiBfX2FsbG9jX3NpemVfXw0KPiArIyBkZWZp
bmUgX19hbGxvY19zaXplKHgsIC4uLikgIF9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9fVkFfQVJHU19f
KSBfX21hbGxvYw0KPiArIyBkZWZpbmUgX19yZWFsbG9jX3NpemUoeCwgLi4uKSAgICAgICAgX19h
bGxvY19zaXplX18oeCwgIyMgX19WQV9BUkdTX18pDQo+ICsjZWxzZQ0KPiArIyBkZWZpbmUgX19h
bGxvY19zaXplKHgsIC4uLikgIF9fbWFsbG9jDQo+ICsjIGRlZmluZSBfX3JlYWxsb2Nfc2l6ZSh4
LCAuLi4pDQo+ICsjZW5kaWYNCj4NCj4gICNpZm5kZWYgYXNtX3ZvbGF0aWxlX2dvdG8NCj4gICNk
ZWZpbmUgYXNtX3ZvbGF0aWxlX2dvdG8oeC4uLikgYXNtIGdvdG8oeCkNCg0KDQpHcntvZXRqZSxl
ZXRpbmd9cywNCg0KICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQNCg0KLS0NCkdlZXJ0IFV5
dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRA
bGludXgtbTY4ay5vcmcNCg0KSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNh
bCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dA0Kd2hlbiBJJ20gdGFsa2luZyB0
byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0
aGF0Lg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcw0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
