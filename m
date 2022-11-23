Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3C4635F8B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 14:28:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F41B3EE6D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 13:28:49 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by lists.linaro.org (Postfix) with ESMTPS id 1F9543ED5F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 13:28:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=LpbFRrE4;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.41 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f41.google.com with SMTP id d13so6394136qvj.8
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 05:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7jP5JkUAzhr8sdoQa11afBC1SfNPGIbOYpHGrmxYRFs=;
        b=LpbFRrE4jG0rar+gE8VDxsymFPxcx5lFSbojrbcZCgN0qZUiNoRcvAbDA3lzqxg1Er
         IJ3aGdMgaygpFNdREcTLqDkL4i6QOFYKeuYSzxaPfOpGKSxXgqw/9eqJSJAFtR+09q90
         nj7HAbt1xob7s+rz8RHH5lUpt1d31g/oOesxxPIUT2Fo/pyhcFU6/2QEeY1GO1eajpX7
         Po2VxliqXqZYNBElUP9B0f8GSgFr1JLu6IcAHbprkLWIq54uYtNiOR7zjOeb7TorxUwv
         UK6pHtxz9kBK0YIdgwrmR4pad9ghjyutd+Trk6LRLcqnkS7wu6R6he2cvHIFnOtjhGnt
         PnEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7jP5JkUAzhr8sdoQa11afBC1SfNPGIbOYpHGrmxYRFs=;
        b=Ra3hfhQLYIuPE70KorJlSpEC48E1l4apW4brxOCsRQ+fkmGGtVEn0Ki8NmgL56OvYs
         v0gB8Arq+uAvW4yg+LMUyvsVZzlMx/BZ/wne/oglPbYsapTOnOggUiaNpZid27yicaxL
         Re8CChRGaAizkPFx+d11chimLkrCtz74cDMUoZRNHX7lkRI9478P+ZPN1J6ObRErvjN7
         7b06bSKdaQDW7VeRqhhfprFLVtK7l7W5R2Gn9UYA6KTLsWQ8u5/r0Pgsce66ed+cLRc+
         WHh18EU+G7CrDOHK7cC9xG+jv8qV0+6Ybf9qyl2yRNlaBQthqkw0N47K7sI3GiSAFU86
         yFJg==
X-Gm-Message-State: ANoB5pliatxM6MD16HjKls0goM+P3pgboNrkqzfk1cnHqaMhT33PLo9k
	ej0bQiUJjR5WLYKskH6xBKXXhg==
X-Google-Smtp-Source: AA0mqf462TGanlMhxGWROZqgtGQB3JrB9BVj6FCWo4SuHXfM/T0EjluDwPz4UJ7NSsgeXNKFzrl93g==
X-Received: by 2002:a0c:ee64:0:b0:4bb:71ce:d936 with SMTP id n4-20020a0cee64000000b004bb71ced936mr14762064qvs.119.1669210119759;
        Wed, 23 Nov 2022 05:28:39 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id c8-20020ac853c8000000b003972790deb9sm9796561qtq.84.2022.11.23.05.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 05:28:38 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxpnp-00AK8S-O1;
	Wed, 23 Nov 2022 09:28:37 -0400
Date: Wed, 23 Nov 2022 09:28:37 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Y34gBUl0m+j1JdFk@ziepe.ca>
References: <Y30kK6dsssSLJVgp@ziepe.ca>
 <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca>
 <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca>
 <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
X-Rspamd-Queue-Id: 1F9543ED5F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[47.55.122.23:received,209.85.219.41:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ziepe.ca];
	FREEMAIL_TO(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:dkim];
	RCPT_COUNT_TWELVE(0.00)[13];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.41:from];
	NEURAL_HAM(-0.00)[-0.997];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:email,nvidia.com:email,mail-qv1-f41.google.com:rdns,mail-qv1-f41.google.com:helo];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CDUY4V2KGUOHSY5YYJJ3FKWG5W6RYOOR
X-Message-ID-Hash: CDUY4V2KGUOHSY5YYJJ3FKWG5W6RYOOR
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CDUY4V2KGUOHSY5YYJJ3FKWG5W6RYOOR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMDI6MTI6MjVQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQW0gMjMuMTEuMjIgdW0gMTM6NTMgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6
DQo+ID4gT24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMDE6NDk6NDFQTSArMDEwMCwgQ2hyaXN0aWFu
IEvDtm5pZyB3cm90ZToNCj4gPiA+IEFtIDIzLjExLjIyIHVtIDEzOjQ2IHNjaHJpZWIgSmFzb24g
R3VudGhvcnBlOg0KPiA+ID4gPiBPbiBXZWQsIE5vdiAyMywgMjAyMiBhdCAxMTowNjo1NUFNICsw
MTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0KPiA+ID4gPiANCj4gPiA+ID4gPiA+IE1heWJlIGEg
R0ZQIGZsYWcgdG8gc2V0IHRoZSBwYWdlIHJlZmVyZW5jZSBjb3VudCB0byB6ZXJvIG9yIHNvbWV0
aGluZw0KPiA+ID4gPiA+ID4gbGlrZSB0aGlzPw0KPiA+ID4gPiA+IEhtIHllYWggdGhhdCBtaWdo
dCB3b3JrLiBJJ20gbm90IHN1cmUgd2hhdCBpdCB3aWxsIGFsbCBicmVhayB0aG91Z2g/DQo+ID4g
PiA+ID4gQW5kIHdlJ2QgbmVlZCB0byBtYWtlIHN1cmUgdGhhdCB1bmRlcmZsb3dpbmcgdGhlIHBh
Z2UgcmVmY291bnQgZGllcyBpbg0KPiA+ID4gPiA+IGEgYmFja3RyYWNlLg0KPiA+ID4gPiBNdWNr
aW5nIHdpdGggdGhlIHJlZmNvdW50IGxpa2UgdGhpcyB0byBwcm90ZWN0IGFnYWluc3QgY3Jhenkg
b3V0IG9mDQo+ID4gPiA+IHRyZWUgZHJpdmVzIHNlZW1zIGhvcnJpYmxlLi4NCj4gPiA+IFdlbGwg
bm90IG9ubHkgb3V0IG9mIHRyZWUgZHJpdmVycy4gVGhlIGludHJlZSBLVk0gZ290IHRoYXQgaG9y
cmlibGUNCj4gPiA+IHdyb25nIGFzIHdlbGwsIHRob3NlIHdoZXJlIHRoZSBsYXRlc3QgZ3V5cyBj
b21wbGFpbmluZyBhYm91dCBpdC4NCj4gPiBrdm0gd2FzIHRha2luZyByZWZzIG9uIHNwZWNpYWwg
UFRFcz8gVGhhdCBzZWVtcyByZWFsbHkgdW5saWtlbHk/DQo+IA0KPiBXZWxsIHRoZW4gbG9vayBh
dCB0aGlzIGNvZGUgaGVyZToNCj4gDQo+IGNvbW1pdCBhZGQ2YTBjZDFjNWJhNTFiMjAxZTEzNjFi
MDVhNWRmODE3MDgzNjE4DQo+IEF1dGhvcjogUGFvbG8gQm9uemluaSA8cGJvbnppbmlAcmVkaGF0
LmNvbT4NCj4gRGF0ZTrCoMKgIFR1ZSBKdW4gNyAxNzo1MToxOCAyMDE2ICswMjAwDQo+IA0KPiDC
oMKgwqAgS1ZNOiBNTVU6IHRyeSB0byBmaXggdXAgcGFnZSBmYXVsdHMgYmVmb3JlIGdpdmluZyB1
cA0KPiANCj4gwqDCoMKgIFRoZSB2R1BVIGZvbGtzIHdvdWxkIGxpa2UgdG8gdHJhcCB0aGUgZmly
c3QgYWNjZXNzIHRvIGEgQkFSIGJ5IHNldHRpbmcNCj4gwqDCoMKgIHZtX29wcyBvbiB0aGUgVk1B
cyBwcm9kdWNlZCBieSBtbWFwLWluZyBhIFZGSU8gZGV2aWNlLsKgIFRoZSBmYXVsdA0KPiBoYW5k
bGVyDQo+IMKgwqDCoCB0aGVuIGNhbiB1c2UgcmVtYXBfcGZuX3JhbmdlIHRvIHBsYWNlIHNvbWUg
bm9uLXJlc2VydmVkIHBhZ2VzIGluIHRoZQ0KPiBWTUEuDQo+IA0KPiDCoMKgwqAgVGhpcyBraW5k
IG9mIFZNX1BGTk1BUCBtYXBwaW5nIGlzIG5vdCBoYW5kbGVkIGJ5IEtWTSwgYnV0IGZvbGxvd19w
Zm4NCj4gwqDCoMKgIGFuZCBmaXh1cF91c2VyX2ZhdWx0IHRvZ2V0aGVyIGhlbHAgc3VwcG9ydGlu
ZyBpdC7CoCBUaGUgcGF0Y2ggYWxzbw0KPiBzdXBwb3J0cw0KPiDCoMKgwqAgVk1fTUlYRURNQVAg
dm1hcyB3aGVyZSB0aGUgcGZucyBhcmUgbm90IHJlc2VydmVkIGFuZCB0aHVzIHN1YmplY3QgdG8N
Cj4gwqDCoMKgIHJlZmVyZW5jZSBjb3VudGluZy4NCj4gDQo+IMKgwqDCoCBDYzogWGlhbyBHdWFu
Z3JvbmcgPGd1YW5ncm9uZy54aWFvQGxpbnV4LmludGVsLmNvbT4NCj4gwqDCoMKgIENjOiBBbmRy
ZWEgQXJjYW5nZWxpIDxhYXJjYW5nZUByZWRoYXQuY29tPg0KPiDCoMKgwqAgQ2M6IFJhZGltIEty
xI1tw6HFmSA8cmtyY21hckByZWRoYXQuY29tPg0KPiDCoMKgwqAgVGVzdGVkLWJ5OiBOZW8gSmlh
IDxjamlhQG52aWRpYS5jb20+DQo+IMKgwqDCoCBSZXBvcnRlZC1ieTogS2lydGkgV2Fua2hlZGUg
PGt3YW5raGVkZUBudmlkaWEuY29tPg0KPiDCoMKgwqAgU2lnbmVkLW9mZi1ieTogUGFvbG8gQm9u
emluaSA8cGJvbnppbmlAcmVkaGF0LmNvbT4NCg0KVGhpcyBwYXRjaCBpcyBrbm93biB0byBiZSBi
cm9rZW4gaW4gc28gbWFueSB3YXlzLiBJdCBhbHNvIGhhcyBhIG1ham9yDQpzZWN1cml0eSBob2xl
IHRoYXQgaXQgaWdub3JlcyB0aGUgUFRFIGZsYWdzIG1ha2luZyB0aGUgcGFnZQ0KUk8uIElnbm9y
aW5nIHRoZSBzcGVjaWFsIGJpdCBpcyBzb21laG93IG5vdCBzdXJwcmlzaW5nIDooDQoNClRoaXMg
cHJvYmFibHkgZG9lc24ndCB3b3JrLCBidXQgaXMgdGhlIGdlbmVyYWwgaWRlYSBvZiB3aGF0IEtW
TSBuZWVkcw0KdG8gZG86DQoNCmRpZmYgLS1naXQgYS92aXJ0L2t2bS9rdm1fbWFpbi5jIGIvdmly
dC9rdm0va3ZtX21haW4uYw0KaW5kZXggMTM3NmE0N2ZlZGVlZGIuLjQxNjEyNDFmYzMyMjhjIDEw
MDY0NA0KLS0tIGEvdmlydC9rdm0va3ZtX21haW4uYw0KKysrIGIvdmlydC9rdm0va3ZtX21haW4u
Yw0KQEAgLTI1OTgsNiArMjU5OCwxOSBAQCBzdGF0aWMgaW50IGh2YV90b19wZm5fcmVtYXBwZWQo
c3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsDQogCQkJcmV0dXJuIHI7DQogCX0NCiANCisJLyoN
CisJICogU3BlY2lhbCBQVEVzIGFyZSBuZXZlciBjb252ZXJ0aWJsZSBpbnRvIGEgc3RydWN0IHBh
Z2UsIGV2ZW4gaWYgdGhlDQorCSAqIGRyaXZlciB0aGF0IG93bnMgdGhlbSBtaWdodCBoYXZlIHB1
dCBhIFBGTiB3aXRoIGEgc3RydWN0IHBhZ2UgaW50bw0KKwkgKiB0aGUgUEZOTUFQLiBJZiB0aGUg
YXJjaCBkb2Vzbid0IHN1cHBvcnQgc3BlY2lhbCB0aGVuIHdlIGNhbm5vdA0KKwkgKiBzYWZlbHkg
cHJvY2VzcyB0aGVzZSBwYWdlcy4NCisJICovDQorI2lmZGVmIENPTkZJR19BUkNIX0hBU19QVEVf
U1BFQ0lBTA0KKwlpZiAocHRlX3NwZWNpYWwoKnB0ZXApKQ0KKwkJcmV0dXJuIC1FSU5WQUw7DQor
I2Vsc2UNCisJcmV0dXJuIC1FSU5WQUw7DQorI2VuZGlmDQorDQogCWlmICh3cml0ZV9mYXVsdCAm
JiAhcHRlX3dyaXRlKCpwdGVwKSkgew0KIAkJcGZuID0gS1ZNX1BGTl9FUlJfUk9fRkFVTFQ7DQog
CQlnb3RvIG91dDsNCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
