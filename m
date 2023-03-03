Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E71806AC0C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 14:25:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC5643F062
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Mar 2023 13:25:32 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by lists.linaro.org (Postfix) with ESMTPS id C9D173EA34
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 18:20:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=QczMEiEg;
	spf=pass (lists.linaro.org: domain of mattst88@gmail.com designates 209.85.166.179 as permitted sender) smtp.mailfrom=mattst88@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-il1-f179.google.com with SMTP id g9so2205770ila.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Mar 2023 10:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=axdACOpDgX4dqbHNbIgw6l/7ldg/vQEmMI8fQauJgl8=;
        b=QczMEiEgQw99JTo6idDjCmdUY+sExwLtJY3/KxeKkvYdy0yKmdUEPD0dgjI7WTlutJ
         tdoXP8gPcHCyv03Mt3F59SccC5tXpCy4xMbgV/Va1gbe1xpd7QRnEuJeCjvKLDCVnxiy
         GTAst35/hfaVx/jtfzPmqmH2i3H7VA6+h6eACYF+gFiKRcy6SHcNGVuCKb632mAE5FFD
         jyMD/rneQS2DLsvlGqrApDw2hWb5Wei9gvmhqogPv1qmFtOkgQ/Wsze9U8yuRtejB+l+
         Al2mUiQ0CI6j6QyECn0Tmf0ZM/+uervRLoZ9A7RtA3ORLXu8ei5N1WedxMbhvS36QH8Q
         2FCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=axdACOpDgX4dqbHNbIgw6l/7ldg/vQEmMI8fQauJgl8=;
        b=6rcD+sbJeL1FfhctocGFBDwLCrGdLcPBgdzW61GDA3qwR9XIIyNCAukD9Qg2OndAwt
         IS0pNwAhIBv9TxU0ib/lk2g3tg/10znMQH8WzgxKbNCJugUjP4Il3NHkhKjYP4rPcBps
         V2NFJwEWMWO76wRNT4Xixe16mYUbE7JjkxHnVLn5JAABUdS3QkdpkQk1qcxHzaEVtvNy
         +QKJOlDL3mUb3b96sRDnyzVoTS90GJHs4MuiTFJRu5c8W9wJWsnjbJcMcBOcUJO8u/4e
         eUahEbdPY0aIUKIECa9j56fYlcEOrz5lvKout7se1Zwx3BAx3w9THfQHQkfDZOFHPy30
         poMg==
X-Gm-Message-State: AO0yUKXMtE6Uep0QLWxyIh7iEXzCtccY6ofiy1a4VRePmOhtNeD3h2ZH
	5eUe+R6nWq7jrKongwOdoUaLcaFtv4PJutmSJC0=
X-Google-Smtp-Source: AK7set8Qed7nPAs7RH0XEMozjccCh754nLRwreSB3nR6IUtV2hYZym8/5UTUtz+kyz5kn3EXFUYQKPVWknxcgmIQOPA=
X-Received: by 2002:a05:6e02:130f:b0:315:9761:6965 with SMTP id
 g15-20020a056e02130f00b0031597616965mr1232665ilr.5.1677867649207; Fri, 03 Mar
 2023 10:20:49 -0800 (PST)
MIME-Version: 1.0
References: <20230302235356.3148279-1-robdclark@gmail.com> <20230302235356.3148279-16-robdclark@gmail.com>
 <ZAFnqbycMleLmRe9@intel.com> <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
 <CAF6AEGs6QYTESuwB8E9cTbv9LqQX16tz6-geeu9BCyFos9=sOA@mail.gmail.com> <a5ced581-4060-0fa2-d2fc-d18beee6fdb5@linux.intel.com>
In-Reply-To: <a5ced581-4060-0fa2-d2fc-d18beee6fdb5@linux.intel.com>
From: Matt Turner <mattst88@gmail.com>
Date: Fri, 3 Mar 2023 13:20:38 -0500
Message-ID: <CAEdQ38FLf0jX6oWCkmx+xwgF8YAH8xSwhw5RUGC3xwdDBr7NVQ@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C9D173EA34
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.179:from];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,lists.freedesktop.org,ffwll.ch,daenzer.net,amd.com,emersion.fr,chromium.org,linux.intel.com,linaro.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-MailFrom: mattst88@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4O33OIHAUPMQ74RNALYOZDZG6X4KU47F
X-Message-ID-Hash: 4O33OIHAUPMQ74RNALYOZDZG6X4KU47F
X-Mailman-Approved-At: Mon, 06 Mar 2023 13:25:14 +0000
CC: Rob Clark <robdclark@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4O33OIHAUPMQ74RNALYOZDZG6X4KU47F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBNYXIgMywgMjAyMyBhdCAxMDowOOKAr0FNIFR2cnRrbyBVcnN1bGluDQo8dHZydGtv
LnVyc3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4NCj4NCj4gT24gMDMvMDMvMjAyMyAx
NDo0OCwgUm9iIENsYXJrIHdyb3RlOg0KPiA+IE9uIEZyaSwgTWFyIDMsIDIwMjMgYXQgMTo1OCBB
TSBUdnJ0a28gVXJzdWxpbg0KPiA+IDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+IHdy
b3RlOg0KPiA+Pg0KPiA+Pg0KPiA+PiBPbiAwMy8wMy8yMDIzIDAzOjIxLCBSb2RyaWdvIFZpdmkg
d3JvdGU6DQo+ID4+PiBPbiBUaHUsIE1hciAwMiwgMjAyMyBhdCAwMzo1MzozN1BNIC0wODAwLCBS
b2IgQ2xhcmsgd3JvdGU6DQo+ID4+Pj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21p
dW0ub3JnPg0KPiA+Pj4+DQo+ID4+Pg0KPiA+Pj4gbWlzc2luZyBzb21lIHdvcmRpbmcgaGVyZS4u
Lg0KPiA+Pj4NCj4gPj4+PiB2MjogcmViYXNlDQo+ID4+Pj4NCj4gPj4+PiBTaWduZWQtb2ZmLWJ5
OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4+Pj4gLS0tDQo+ID4+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCAyMCArKysrKysrKysrKysr
KysrKysrKw0KPiA+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspDQo+ID4+
Pj4NCj4gPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYw0KPiA+Pj4+IGluZGV4IDc1
MDNkY2I5MDQzYi4uNDQ0OTFlN2UyMTRjIDEwMDY0NA0KPiA+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jDQo+ID4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmMNCj4gPj4+PiBAQCAtOTcsNiArOTcsMjUgQEAgc3RhdGljIGJvb2wg
aTkxNV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiA+
Pj4+ICAgICAgIHJldHVybiBpOTE1X3JlcXVlc3RfZW5hYmxlX2JyZWFkY3J1bWIodG9fcmVxdWVz
dChmZW5jZSkpOw0KPiA+Pj4+ICAgIH0NCj4gPj4+Pg0KPiA+Pj4+ICtzdGF0aWMgdm9pZCBpOTE1
X2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFk
bGluZSkNCj4gPj4+PiArew0KPiA+Pj4+ICsgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEgPSB0
b19yZXF1ZXN0KGZlbmNlKTsNCj4gPj4+PiArDQo+ID4+Pj4gKyAgICBpZiAoaTkxNV9yZXF1ZXN0
X2NvbXBsZXRlZChycSkpDQo+ID4+Pj4gKyAgICAgICAgICAgIHJldHVybjsNCj4gPj4+PiArDQo+
ID4+Pj4gKyAgICBpZiAoaTkxNV9yZXF1ZXN0X3N0YXJ0ZWQocnEpKQ0KPiA+Pj4+ICsgICAgICAg
ICAgICByZXR1cm47DQo+ID4+Pg0KPiA+Pj4gd2h5IGRvIHdlIHNraXAgdGhlIGJvb3N0IGlmIGFs
cmVhZHkgc3RhcnRlZD8NCj4gPj4+IGRvbid0IHdlIHdhbnQgdG8gYm9vc3QgdGhlIGZyZXEgYW55
d2F5Pw0KPiA+Pg0KPiA+PiBJJ2Qgd2FnZXIgUm9iIGlzIGp1c3QgY29weWluZyB0aGUgY3VycmVu
dCBpOTE1IHdhaXQgYm9vc3QgbG9naWMuDQo+ID4NCj4gPiBZdXAsIGFuZCBwcm9iYWJseSBpbmNv
cnJlY3RseS4uIE1hdHQgcmVwb3J0ZWQgZmV3ZXIgYm9vc3RzL3NlYw0KPiA+IGNvbXBhcmVkIHRv
IHlvdXIgUkZDLCB0aGlzIGNvdWxkIGJlIHRoZSBidWcNCj4NCj4gSG0sIHRoZXJlIEkgaGF2ZSBw
cmVzZXJ2ZWQgdGhpcyBzYW1lICFpOTE1X3JlcXVlc3Rfc3RhcnRlZCBsb2dpYy4NCj4NCj4gUHJl
c3VtYWJseSBpdCdzIG5vdCBqdXN0IGZld2VyIGJvb3N0cyBidXQgbG93ZXIgcGVyZm9ybWFuY2Uu
IEhvdyBpcyBoZQ0KPiBzZXR0aW5nIHRoZSBkZWFkbGluZT8gU29tZWhvdyBmcm9tIGNsRmx1c2gg
b3Igc28/DQo+DQo+IFJlZ2FyZHMsDQo+DQo+IFR2cnRrbw0KPg0KPiBQLlMuIFRha2Ugbm90ZSB0
aGF0IEkgZGlkIG5vdCBwb3N0IHRoZSBsYXRlc3QgdmVyc2lvbiBvZiBteSBSRkMuIFRoZSBvbmUN
Cj4gd2hlcmUgSSBmaXggdGhlIGZlbmNlIGNoYWluIGFuZCBhcnJheSBtaXNzZXMgeW91IHBvaW50
ZWQgb3V0LiBJIGRpZCBub3QNCj4gdGhpbmsgaXQgd291bGQgYmUgd29ydGh3aGlsZSBnaXZlbiBu
byB1bml2ZXJzYWwgbG92ZSBmb3IgaXQsIGJ1dCBpZg0KPiBwZW9wbGUgYXJlIHRlc3Rpbmcgd2l0
aCBpdCBtb3JlIHdpZGVseSB0aGF0IEkgd2FzIGF3YXJlIHBlcmhhcHMgSSBzaG91bGQuDQoNClll
cCwgdGhhdCB3b3VsZCBiZSBncmVhdC4gV2UncmUgaW50ZXJlc3RlZCBpbiBpdCBmb3IgQ2hyb21l
T1MuIFBsZWFzZQ0KQ2MgbWUgb24gdGhlIHNlcmllcyB3aGVuIHlvdSBzZW5kIGl0Lg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
