Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2876A9AE5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 16:43:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8642A3EF4B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 15:43:49 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by lists.linaro.org (Postfix) with ESMTPS id 2E4743E896
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 15:43:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=SIS1TIhc;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.182 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id bg11so2092635oib.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Mar 2023 07:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677858210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TQxH8ZWizGhpLpVMGBCg+glmrgZwdkg8RYT2oJUwuiw=;
        b=SIS1TIhc+zb2C/l6aPGRZ4hDRWoIWQFGxXdRmasAggox5NmdQ65LymIRkCBSqUqdkF
         LVf/hMHn+k1O1PcYaoU6HAsadpLfo/q1/zD455OpSnrEwIBuoZg0G8xC2rryAFF1H0ZS
         29ExCFQgTjQOIEqe/PC9dS6IF7EtXC1q/QCT9XnBsq2qTZ0hxQ4GOZhUTKZdNbuTqW/b
         wvQDiL8qf+8yv1Emg2y1wneFOItSOsVs0R3B9jpmhOOFzWtuv3muaV23xHXbGuI7CvTl
         ZxDw7LuNWt/LK3M58w6ACdzYekyUtu3zxIQsQ5b3u6bEHyIngPRgMu2vlJ+JbMl7lmE/
         F4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677858210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TQxH8ZWizGhpLpVMGBCg+glmrgZwdkg8RYT2oJUwuiw=;
        b=3PX+m/z8NAUonCwbev5m0o2aoo97pW3E3HFokfk4n/wvoPqfEZ6jUg6r0QXdP/JKHo
         tltdsXZEMwP+odpJW66Iqr1PNw0xosNa38aOmpM0H1M/IjrhBHYbA4ozO5nlNI0Mej2l
         vngsDwIpS99qUcB9VwTdfo6o7tkDAda2oNudeBozVtc9K4riFCcOtNYD3lKPMjhQN9jq
         yW/K+c0XuEvcU20kMDiPJH9+wQakZMl26iBYUfkEl7BcWUaEv/KxZUl9C+KoWxCnOsPO
         K/AP7xAbNrZSWbwVFei1sqmrnp5o1ZYkRFzf3y1paZ5E2u5si9EIsgBycD2WMKkIbVCC
         eGXQ==
X-Gm-Message-State: AO0yUKWUCczET3jP220WcjgF+v/B/mByUJl+KD0lY971MFzMlHrcHwci
	5tftFQYSeUkdGAvoaYxWpe4o34RP0NY9KuEw3wk=
X-Google-Smtp-Source: AK7set8WYj13njQ4eDzBoQOY2+mFeBIknWmbCTDY5/hj5Jb/TlKVYgvOi3ICKaHC5TUQE9KdMML0MYqsYHIsEMqs3jI=
X-Received: by 2002:a05:6808:b21:b0:37f:b1ac:6b90 with SMTP id
 t1-20020a0568080b2100b0037fb1ac6b90mr671799oij.0.1677858210555; Fri, 03 Mar
 2023 07:43:30 -0800 (PST)
MIME-Version: 1.0
References: <20230302235356.3148279-1-robdclark@gmail.com> <20230302235356.3148279-16-robdclark@gmail.com>
 <ZAFnqbycMleLmRe9@intel.com> <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
 <CAF6AEGs6QYTESuwB8E9cTbv9LqQX16tz6-geeu9BCyFos9=sOA@mail.gmail.com>
 <ZAILc/fxzBqLv1OF@intel.com> <ZAIQDBD+HPbQA5sr@intel.com>
In-Reply-To: <ZAIQDBD+HPbQA5sr@intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 3 Mar 2023 07:43:19 -0800
Message-ID: <CAF6AEGuvrZs6+9c+bUPaUpZx85Xa-R-oDjFNbC8XRbMd7rvGpA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E4743E896
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[chromium.org,linux.intel.com,intel.com,gmail.com,daenzer.net,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,linaro.org];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.998];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.182:from];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: VFWL7HEWVHUYEXK33Y4D3JY6BJYZWKG7
X-Message-ID-Hash: VFWL7HEWVHUYEXK33Y4D3JY6BJYZWKG7
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Matt Turner <mattst88@gmail.com>, freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VFWL7HEWVHUYEXK33Y4D3JY6BJYZWKG7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBNYXIgMywgMjAyMyBhdCA3OjIwIEFNIFZpbGxlIFN5cmrDpGzDpA0KPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4NCj4gT24gRnJpLCBNYXIgMDMsIDIwMjMg
YXQgMDU6MDA6MDNQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+IE9uIEZyaSwg
TWFyIDAzLCAyMDIzIGF0IDA2OjQ4OjQzQU0gLTA4MDAsIFJvYiBDbGFyayB3cm90ZToNCj4gPiA+
IE9uIEZyaSwgTWFyIDMsIDIwMjMgYXQgMTo1OCBBTSBUdnJ0a28gVXJzdWxpbg0KPiA+ID4gPHR2
cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+DQo+
ID4gPiA+IE9uIDAzLzAzLzIwMjMgMDM6MjEsIFJvZHJpZ28gVml2aSB3cm90ZToNCj4gPiA+ID4g
PiBPbiBUaHUsIE1hciAwMiwgMjAyMyBhdCAwMzo1MzozN1BNIC0wODAwLCBSb2IgQ2xhcmsgd3Jv
dGU6DQo+ID4gPiA+ID4+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4N
Cj4gPiA+ID4gPj4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IG1pc3Npbmcgc29tZSB3b3JkaW5nIGhl
cmUuLi4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+PiB2MjogcmViYXNlDQo+ID4gPiA+ID4+DQo+ID4g
PiA+ID4+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4N
Cj4gPiA+ID4gPj4gLS0tDQo+ID4gPiA+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMgfCAyMCArKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiA+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4+DQo+ID4gPiA+ID4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVxdWVzdC5jDQo+ID4gPiA+ID4+IGluZGV4IDc1MDNkY2I5MDQzYi4uNDQ0
OTFlN2UyMTRjIDEwMDY0NA0KPiA+ID4gPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYw0KPiA+ID4gPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYw0KPiA+ID4gPiA+PiBAQCAtOTcsNiArOTcsMjUgQEAgc3RhdGljIGJvb2wgaTkx
NV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiA+ID4g
PiA+PiAgICAgIHJldHVybiBpOTE1X3JlcXVlc3RfZW5hYmxlX2JyZWFkY3J1bWIodG9fcmVxdWVz
dChmZW5jZSkpOw0KPiA+ID4gPiA+PiAgIH0NCj4gPiA+ID4gPj4NCj4gPiA+ID4gPj4gK3N0YXRp
YyB2b2lkIGk5MTVfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBr
dGltZV90IGRlYWRsaW5lKQ0KPiA+ID4gPiA+PiArew0KPiA+ID4gPiA+PiArICAgIHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxID0gdG9fcmVxdWVzdChmZW5jZSk7DQo+ID4gPiA+ID4+ICsNCj4gPiA+
ID4gPj4gKyAgICBpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpDQo+ID4gPiA+ID4+ICsg
ICAgICAgICAgICByZXR1cm47DQo+ID4gPiA+ID4+ICsNCj4gPiA+ID4gPj4gKyAgICBpZiAoaTkx
NV9yZXF1ZXN0X3N0YXJ0ZWQocnEpKQ0KPiA+ID4gPiA+PiArICAgICAgICAgICAgcmV0dXJuOw0K
PiA+ID4gPiA+DQo+ID4gPiA+ID4gd2h5IGRvIHdlIHNraXAgdGhlIGJvb3N0IGlmIGFscmVhZHkg
c3RhcnRlZD8NCj4gPiA+ID4gPiBkb24ndCB3ZSB3YW50IHRvIGJvb3N0IHRoZSBmcmVxIGFueXdh
eT8NCj4gPiA+ID4NCj4gPiA+ID4gSSdkIHdhZ2VyIFJvYiBpcyBqdXN0IGNvcHlpbmcgdGhlIGN1
cnJlbnQgaTkxNSB3YWl0IGJvb3N0IGxvZ2ljLg0KPiA+ID4NCj4gPiA+IFl1cCwgYW5kIHByb2Jh
Ymx5IGluY29ycmVjdGx5Li4gTWF0dCByZXBvcnRlZCBmZXdlciBib29zdHMvc2VjDQo+ID4gPiBj
b21wYXJlZCB0byB5b3VyIFJGQywgdGhpcyBjb3VsZCBiZSB0aGUgYnVnDQo+ID4NCj4gPiBJIGRv
bid0IHRoaW5rIGk5MTUgY2FsbHMgZHJtX2F0b21pY19oZWxwZXJfd2FpdF9mb3JfZmVuY2VzKCkN
Cj4gPiBzbyB0aGF0IGNvdWxkIGV4cGxhaW4gc29tZXRoaW5nLg0KPg0KPiBPaCwgSSBndWVzcyB0
aGlzIHdhc24ndCBldmVuIHN1cHBvc2VkIHRvIHRha2Ugb3ZlciB0aGUgY3VycmVudA0KPiBkaXNw
bGF5IGJvb3N0IHN0dWZmIHNpbmNlIHlvdSBkaWRuJ3QgcmVtb3ZlIHRoZSBvbGQgb25lLg0KDQpS
aWdodCwgSSBkaWRuJ3QgdHJ5IHRvIHJlcGxhY2UgdGhlIGN1cnJlbnQgdGhpbmcuLiBidXQgaG9w
ZWZ1bGx5IGF0DQpsZWFzdCBtYWtlIGl0IHBvc3NpYmxlIGZvciBpOTE1IHRvIHVzZSBtb3JlIG9m
IHRoZSBhdG9taWMgaGVscGVycyBpbg0KdGhlIGZ1dHVyZQ0KDQpCUiwNCi1SDQoNCj4gVGhlIGN1
cnJlbnQgb25lIGp1c3QgYm9vc3RzIGFmdGVyIGEgbWlzc2VkIHZibGFuay4gVGhlIGRlYWRsaW5l
DQo+IGNvdWxkIHVzZSB5b3VyIHRpbWVyIGFwcHJvYWNoIEkgc3VwcG9zZSBhbmQgYm9vc3QgYWxy
ZWFkeSBhIGJpdA0KPiBlYXJsaWVyIGluIHRoZSBob3BlcyBvZiBub3QgbWlzc2luZyB0aGUgdmJs
YW5rLg0KPg0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
