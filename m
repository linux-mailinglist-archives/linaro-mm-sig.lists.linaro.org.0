Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAB469F9CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 18:16:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7F113EF14
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 17:16:57 +0000 (UTC)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by lists.linaro.org (Postfix) with ESMTPS id 35B2C3EA27
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 17:16:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=lQDgNkKY;
	spf=pass (lists.linaro.org: domain of robdclark@chromium.org designates 209.85.166.181 as permitted sender) smtp.mailfrom=robdclark@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-il1-f181.google.com with SMTP id a1so3670721iln.9
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 09:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mhU+BNsquktEtbi/RkYY/MGXDA5v+Q/WUyCHkUYFULs=;
        b=lQDgNkKYm7Kw/9Gqs1sd5jf2/jdTGlJTWv+Qjn++DHaoy2a3+xCayICJe/deXw4GDd
         GKZphll2rGzmsO/otYEyDEBBGtBm0Jz9hP5hf7qC0XFRs8meCXNRsNMxeJQA7l2shvmv
         GZUJmxSCvtrwEvMM/gXOpc9PjlNu+3AwLg1cw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mhU+BNsquktEtbi/RkYY/MGXDA5v+Q/WUyCHkUYFULs=;
        b=5QL2xoQ6FRVAJabV6sr0OEWbtH2zHMtOz5x3D7vR/AaCMjev/p9lEZdOob+QLMlqEg
         rh+Cs5dkwnxwrkSD6dVweovsiu5aDY071A08QsM9QZXsV6BmdCafooUjTh389L/kizoh
         avbjVKFKva/wlMBVNqDpBcycBQtd0bvti8ATf+qaIykBJ5pxRHgIiWyVhZVQ9yiZ9MGi
         IWqun6yrjMs3fR1wW0hYu6TGixhuLIZUjgkPmDvXhilHhtxUc0tt9yaT2KUNeges6wI9
         S5Fl2Dw9L8svGRLbr1uM+qUehYQfRVlxWMO9LyAN2BSQhVkkbGp+5WAtdVvQFzWV9/Ux
         hULA==
X-Gm-Message-State: AO0yUKX8GGZTvLeIY/NjkHWKg86/yBvtAJSJyF6VFkB1f0MOZPL8tiPS
	W1Bwljvmzkb5UDh1nAMAVFRBgc/TTkHKYkaSFEV8Kg==
X-Google-Smtp-Source: AK7set/AvczuuV/MFcXVOCegpHdTpxULr+lm3D7Z1vYckYZ9NKPGNbBTDklJzM7XygKZ0V+MDmS0YVm+hHB5Gb1lfDE=
X-Received: by 2002:a05:6e02:1a2e:b0:313:af46:81ba with SMTP id
 g14-20020a056e021a2e00b00313af4681bamr2377996ile.3.1677086196661; Wed, 22 Feb
 2023 09:16:36 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-2-robdclark@gmail.com>
 <b65a2fe2-6f68-2116-9599-2940e66d166b@linux.intel.com> <21f36640-3229-0b46-31a2-a47efc5be934@amd.com>
 <b8a16579-4be7-8e14-01e4-9d17c1570c8b@linux.intel.com>
In-Reply-To: <b8a16579-4be7-8e14-01e4-9d17c1570c8b@linux.intel.com>
From: Rob Clark <robdclark@chromium.org>
Date: Wed, 22 Feb 2023 09:16:25 -0800
Message-ID: <CAJs_Fx61OpgFo_kSLoy+2z8mS=wcdK8eZfQBA6dQm9p0=qLU2g@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 35B2C3EA27
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,lists.freedesktop.org,padovan.org,intel.com,daenzer.net,vger.kernel.org,linaro.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[chromium.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.181:from];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: DLO3YT6A3DHBCELIV4KO6IHD7EI4A7BX
X-Message-ID-Hash: DLO3YT6A3DHBCELIV4KO6IHD7EI4A7BX
X-MailFrom: robdclark@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DLO3YT6A3DHBCELIV4KO6IHD7EI4A7BX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBGZWIgMjIsIDIwMjMgYXQgOTowNSBBTSBUdnJ0a28gVXJzdWxpbg0KPHR2cnRrby51
cnN1bGluQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+DQo+DQo+IE9uIDIyLzAyLzIwMjMgMTU6
MjgsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4gQW0gMjIuMDIuMjMgdW0gMTE6MjMgc2No
cmllYiBUdnJ0a28gVXJzdWxpbjoNCj4gPj4NCj4gPj4gT24gMTgvMDIvMjAyMyAyMToxNSwgUm9i
IENsYXJrIHdyb3RlOg0KPiA+Pj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0u
b3JnPg0KPiA+Pj4NCj4gPj4+IEFkZCBhIHdheSB0byBoaW50IHRvIHRoZSBmZW5jZSBzaWduYWxl
ciBvZiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcw0KPiA+Pj4gdmJsYW5rLCB3aGljaCB0
aGUgZmVuY2Ugd2FpdGVyIHdvdWxkIHByZWZlciBub3QgdG8gbWlzcy4gIFRoaXMgaXMgdG8gYWlk
DQo+ID4+PiB0aGUgZmVuY2Ugc2lnbmFsZXIgaW4gbWFraW5nIHBvd2VyIG1hbmFnZW1lbnQgZGVj
aXNpb25zLCBsaWtlIGJvb3N0aW5nDQo+ID4+PiBmcmVxdWVuY3kgYXMgdGhlIGRlYWRsaW5lIGFw
cHJvYWNoZXMgYW5kIGF3YXJlbmVzcyBvZiBtaXNzaW5nIGRlYWRsaW5lcw0KPiA+Pj4gc28gdGhh
dCBjYW4gYmUgZmFjdG9yZWQgaW4gdG8gdGhlIGZyZXF1ZW5jeSBzY2FsaW5nLg0KPiA+Pj4NCj4g
Pj4+IHYyOiBEcm9wIGRtYV9mZW5jZTo6ZGVhZGxpbmUgYW5kIHJlbGF0ZWQgbG9naWMgdG8gZmls
dGVyIGR1cGxpY2F0ZQ0KPiA+Pj4gICAgICBkZWFkbGluZXMsIHRvIGF2b2lkIGluY3JlYXNpbmcg
ZG1hX2ZlbmNlIHNpemUuICBUaGUgZmVuY2UtY29udGV4dA0KPiA+Pj4gICAgICBpbXBsZW1lbnRh
dGlvbiB3aWxsIG5lZWQgc2ltaWxhciBsb2dpYyB0byB0cmFjayBkZWFkbGluZXMgb2YgYWxsDQo+
ID4+PiAgICAgIHRoZSBmZW5jZXMgb24gdGhlIHNhbWUgdGltZWxpbmUuICBbY2tvZW5pZ10NCj4g
Pj4+IHYzOiBDbGFyaWZ5IGxvY2tpbmcgd3J0LiBzZXRfZGVhZGxpbmUgY2FsbGJhY2sNCj4gPj4+
DQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+
DQo+ID4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KPiA+Pj4gLS0tDQo+ID4+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8
IDIwICsrKysrKysrKysrKysrKysrKysrDQo+ID4+PiAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmggICB8IDIwICsrKysrKysrKysrKysrKysrKysrDQo+ID4+PiAgIDIgZmlsZXMgY2hhbmdlZCwg
NDAgaW5zZXJ0aW9ucygrKQ0KPiA+Pj4NCj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gPj4+IGluZGV4
IDBkZTA0ODJjZDM2ZS4uNzYzYjMyNjI3Njg0IDEwMDY0NA0KPiA+Pj4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMNCj4gPj4+IEBAIC05MTIsNiArOTEyLDI2IEBAIGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0
KHN0cnVjdCBkbWFfZmVuY2UNCj4gPj4+ICoqZmVuY2VzLCB1aW50MzJfdCBjb3VudCwNCj4gPj4+
ICAgfQ0KPiA+Pj4gICBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KTsN
Cj4gPj4+ICAgKw0KPiA+Pj4gKy8qKg0KPiA+Pj4gKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUg
LSBzZXQgZGVzaXJlZCBmZW5jZS13YWl0IGRlYWRsaW5lDQo+ID4+PiArICogQGZlbmNlOiAgICB0
aGUgZmVuY2UgdGhhdCBpcyB0byBiZSB3YWl0ZWQgb24NCj4gPj4+ICsgKiBAZGVhZGxpbmU6IHRo
ZSB0aW1lIGJ5IHdoaWNoIHRoZSB3YWl0ZXIgaG9wZXMgZm9yIHRoZSBmZW5jZSB0byBiZQ0KPiA+
Pj4gKyAqICAgICAgICAgICAgc2lnbmFsZWQNCj4gPj4+ICsgKg0KPiA+Pj4gKyAqIEluZm9ybSB0
aGUgZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMNCj4gPj4+
IHZibGFuaywgYnkNCj4gPj4+ICsgKiB3aGljaCBwb2ludCB0aGUgd2FpdGVyIHdvdWxkIHByZWZl
ciB0aGUgZmVuY2UgdG8gYmUgc2lnbmFsZWQgYnkuDQo+ID4+PiBUaGlzDQo+ID4+PiArICogaXMg
aW50ZW5kZWQgdG8gZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGlu
IHBvd2VyDQo+ID4+PiArICogbWFuYWdlbWVudCBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3Rpbmcg
R1BVIGZyZXF1ZW5jeSBpZiBhIHBlcmlvZGljDQo+ID4+PiArICogdmJsYW5rIGRlYWRsaW5lIGlz
IGFwcHJvYWNoaW5nLg0KPiA+Pj4gKyAqLw0KPiA+Pj4gK3ZvaWQgZG1hX2ZlbmNlX3NldF9kZWFk
bGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSkNCj4gPj4+ICt7
DQo+ID4+PiArICAgIGlmIChmZW5jZS0+b3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9p
c19zaWduYWxlZChmZW5jZSkpDQo+ID4+PiArICAgICAgICBmZW5jZS0+b3BzLT5zZXRfZGVhZGxp
bmUoZmVuY2UsIGRlYWRsaW5lKTsNCj4gPj4+ICt9DQo+ID4+PiArRVhQT1JUX1NZTUJPTChkbWFf
ZmVuY2Vfc2V0X2RlYWRsaW5lKTsNCj4gPj4+ICsNCj4gPj4+ICAgLyoqDQo+ID4+PiAgICAqIGRt
YV9mZW5jZV9kZXNjcmliZSAtIER1bXAgZmVuY2UgZGVzY3JpYnRpb24gaW50byBzZXFfZmlsZQ0K
PiA+Pj4gICAgKiBAZmVuY2U6IHRoZSA2ZmVuY2UgdG8gZGVzY3JpYmUNCj4gPj4+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aA0KPiA+Pj4gaW5kZXggNzc1Y2RjMGI0ZjI0Li5kNzdmNjU5MWM0NTMgMTAwNjQ0DQo+ID4+PiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+ID4+PiArKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oDQo+ID4+PiBAQCAtOTksNiArOTksNyBAQCBlbnVtIGRtYV9mZW5jZV9mbGFn
X2JpdHMgew0KPiA+Pj4gICAgICAgRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULA0KPiA+Pj4g
ICAgICAgRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwNCj4gPj4+ICAgICAgIERNQV9GRU5D
RV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KPiA+Pj4gKyAgICBETUFfRkVOQ0VfRkxBR19IQVNf
REVBRExJTkVfQklULA0KPiA+Pg0KPiA+PiBXb3VsZCB0aGlzIGJpdCBiZSBiZXR0ZXIgbGVmdCBv
dXQgZnJvbSBjb3JlIGltcGxlbWVudGF0aW9uLCBnaXZlbiBob3cNCj4gPj4gdGhlIGFwcHJvYWNo
IGlzIHRoZSBjb21wb25lbnQgd2hpY2ggaW1wbGVtZW50cyBkbWEtZmVuY2UgaGFzIHRvIHRyYWNr
DQo+ID4+IHRoZSBhY3R1YWwgZGVhZGxpbmUgYW5kIGFsbD8NCj4gPj4NCj4gPj4gQWxzbyB0YWtp
bmcgYSBzdGVwIGJhY2sgLSBhcmUgd2UgYWxsIG9rYXkgd2l0aCBzdGFydGluZyB0byBleHBhbmQg
dGhlDQo+ID4+IHJlbGF0aXZlbHkgc2ltcGxlIGNvcmUgc3luY2hyb25pc2F0aW9uIHByaW1pdGl2
ZSB3aXRoIHNpZGUgY2hhbm5lbA0KPiA+PiBkYXRhIGxpa2UgdGhpcz8gV2hhdCB3b3VsZCBiZSB0
aGUgY3JpdGVyaWEgZm9yIHdoYXQgc2lkZSBjaGFubmVsIGRhdGENCj4gPj4gd291bGQgYmUgYWNj
ZXB0YWJsZT8gVGFraW5nIG5vdGUgdGhlIHRoaW5nIGxpdmVzIG91dHNpZGUgZHJpdmVycy9ncHUv
Lg0KPiA+DQo+ID4gSSBoYWQgc2ltaWxhciBjb25jZXJucyBhbmQgaXQgdG9vayBtZSBhIG1vbWVu
dCBhcyB3ZWxsIHRvIHVuZGVyc3RhbmQgdGhlDQo+ID4gYmFja2dyb3VuZCB3aHkgdGhpcyBpcyBu
ZWNlc3NhcnkuIEkgZXNzZW50aWFsbHkgZG9uJ3Qgc2VlIG11Y2ggb3RoZXINCj4gPiBhcHByb2Fj
aCB3ZSBjb3VsZCBkby4NCj4gPg0KPiA+IFllcywgdGhpcyBpcyBHUFUvQ1JUQyBzcGVjaWZpYywg
YnV0IHdlIHNvbWVob3cgbmVlZCBhIGNvbW1vbiBpbnRlcmZhY2UNCj4gPiBmb3IgY29tbXVuaWNh
dGluZyBpdCBiZXR3ZWVuIGRyaXZlcnMgYW5kIHRoYXQncyB0aGUgZG1hX2ZlbmNlIG9iamVjdCBh
cw0KPiA+IGZhciBhcyBJIGNhbiBzZWUuDQo+DQo+IFllYWggSSBhbHNvIGRvbid0IHNlZSBhbnkg
b3RoZXIgZWFzeSBvcHRpb25zLiBKdXN0IHdhbnRlZCB0byByYWlzZSB0aGlzDQo+IGFzIHNvbWV0
aGluZyB3aGljaCBwcm9iYWJseSBuZWVkcyBzb21lIHdpZGVyIGFja3MuDQo+DQo+IEFsc28gd2hh
dCBhYm91dCB0aGUgImxvdyBsZXZlbCIgcGFydCBvZiBteSBxdWVzdGlvbiBhYm91dCB0aGUgcmVh
c29uLCBvcg0KPiBiZW5lZml0cywgb2YgZGVmaW5pbmcgdGhlIGRlYWRsaW5lIGJpdCBpbiB0aGUg
Y29tbW9uIGxheWVyPw0KDQpXZSBjb3VsZCBsZWF2ZSBETUFfRkVOQ0VfRkxBR19IQVNfREVBRExJ
TkVfQklUIG91dCwgYnV0IE9UT0ggbWFuYWdpbmcNCmEgYml0bWFzayB0aGF0IGlzIHBhcnRpYWxs
eSBkZWZpbmVkIGluIGNvcmUgZW51bSBhbmQgcGFydGlhbGx5IGluDQpiYWNrZW5kLWRyaXZlciBo
YXMgaXQncyBvd24gZHJhd2JhY2tzLCBhbmQgaXQgaXNuJ3QgbGlrZSB3ZSBhcmUNCnJ1bm5pbmcg
b3V0IG9mIGJpdHMuLiA6c2hydWc6DQoNCkJSLA0KLVINCg0KPiBSZWdhcmRzLA0KPg0KPiBUdnJ0
a28NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
