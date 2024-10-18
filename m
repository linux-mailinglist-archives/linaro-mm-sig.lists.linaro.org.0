Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C469A421C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Oct 2024 17:17:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E119943E8B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Oct 2024 15:17:04 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by lists.linaro.org (Postfix) with ESMTPS id 26E763F44C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Oct 2024 15:16:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ddQyalDT;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.44 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-27b7a1480bdso1017100fac.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Oct 2024 08:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729264608; x=1729869408; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAytm+vTrrtYhXgD+UllQFjS/zTHJKwJ78TI6ibsmew=;
        b=ddQyalDTDAi8NxwCGE9V0t6ymqvwm3y14uiCLF3leQ96R3qsdaeG7FFWvu3KFwKR58
         XPoCvDmnxaAUyxq+9ydo8TxxE0fXM+zkJDLUBOEyV774z3FkN6/NepawRYQ6sNoOXmSG
         C6qEUw9cuqb/oNHBCgU16JDtVbELGydfFAeMcRWgUDsULhjKrIPFIqSUQIIMRcxcEguQ
         upVsh5G0VUeGbESOTquu81Go1T4DmzFiELu4EatI2HDIhqlxN0CJwHvFXtlMS34S5Whd
         ck9phCWD7uqO0c3pL2CmHI8HQPmm382rd17s1UJx1RTKE4Hse/Agh0/RJNO7qbCGUFPj
         fRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729264608; x=1729869408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jAytm+vTrrtYhXgD+UllQFjS/zTHJKwJ78TI6ibsmew=;
        b=BbuuDsRs6wCT5guBML12UXK8ho2lMJHB0sfmYJRud533rK+0Eu2wHauOcAIUYB56LF
         IENJJCWWigdmnqVzkdQZj4d83kUOfHjSxuP7KgW6NB1UQHF4wouRtdPjVA0FZCy+NSzd
         wm2SWoHq3ANplfvYI1GnArFet0DdaTtJF0v6o9Yaw20bgzGgh+r7g9r6UEW4gD7ctUAd
         Fx3Y4VjFEW+m06LBFk4tfs3H74Rp5jhQipZcYVTcsO2/bN6m7AuTxYT+Cb8Umo+dr53/
         nfgGp69SRDnwbPMfd6/LGg6OFxea94/E5ub/T6jPH4pVtoEqFBgp4j8VRd3Y4/Rdnkr6
         m33A==
X-Forwarded-Encrypted: i=1; AJvYcCU96deh4zH66RzR6LINXhjWUjRpk9femtu6IFdA+xIYX1U/Udifu+5sAnSzc7yasDjDy2lEeE3ZL4kgmi6/@lists.linaro.org
X-Gm-Message-State: AOJu0YzTd1bmvmdACqfkdv3fuyYSEc+UrQ4vYeYhTUjHAIXuuvlA13tG
	KHUubimoU1NIrNPJ/Kwc/iLZ+ivc0OUnLfyDRpWusVI7rNk4BaiplsDhx5bkM3J+nfGX3Oq6tZw
	BjKcql8xzMjiPBB/O3afz7j5KTinBw4VtSQDWqB4L
X-Google-Smtp-Source: AGHT+IGolIsaMF++Cy6m1kdkSWxRaRgoSmJ+SJAAIuYVSNeW7g86RMg1ygCv7BHSNEhaFysoGwUOjmgwMXq354t4fEo=
X-Received: by 2002:a05:6870:1594:b0:288:2906:6877 with SMTP id
 586e51a60fabf-2892c5b26d6mr2532230fac.45.1729264608454; Fri, 18 Oct 2024
 08:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <20241015101716.740829-1-jens.wiklander@linaro.org> <CAFA6WYOCDf6RqHr7E9nN7DQdoq+ZDwFO=Y0yB+fzit2GwzDkGg@mail.gmail.com>
In-Reply-To: <CAFA6WYOCDf6RqHr7E9nN7DQdoq+ZDwFO=Y0yB+fzit2GwzDkGg@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 18 Oct 2024 17:16:36 +0200
Message-ID: <CAHUa44Fonf1RdEJ-_SmBS_9+QZmhJ-O0UCi_FNm1xs655oM2Tw@mail.gmail.com>
To: Sumit Garg <sumit.garg@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 26E763F44C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.44:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: N64MWCSUYWISP6M2C72HEFFXDRSA5GNM
X-Message-ID-Hash: N64MWCSUYWISP6M2C72HEFFXDRSA5GNM
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 0/2] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N64MWCSUYWISP6M2C72HEFFXDRSA5GNM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBPY3QgMTcsIDIwMjQgYXQgMTI6NDbigK9QTSBTdW1pdCBHYXJnIDxzdW1pdC5nYXJn
QGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBIaSBKZW5zLA0KPg0KPiBPbiBUdWUsIDE1IE9jdCAy
MDI0IGF0IDE1OjQ3LCBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4g
d3JvdGU6DQo+ID4NCj4gPiBIaSwNCj4gPg0KPiA+IFRoaXMgcGF0Y2ggc2V0IGFsbG9jYXRlcyB0
aGUgcmVzdHJpY3RlZCBETUEtYnVmcyB2aWEgdGhlIFRFRSBzdWJzeXN0ZW0uDQo+ID4gVGhpcyBh
IGNvbXBsZXRlIHJld3JpdGUgY29tcGFyZWQgdG8gdGhlIHByZXZpb3VzIHBhdGNoIHNldCBbMV0s
IGFuZCBvdGhlcg0KPiA+IGVhcmxpZXIgcHJvcG9zYWxzIFsyXSBhbmQgWzNdIHdpdGggYSBzZXBh
cmF0ZSByZXN0cmljdGVkIGhlYXAuDQo+ID4NCj4gPiBUaGUgVEVFIHN1YnN5c3RlbSBoYW5kbGVz
IHRoZSBETUEtYnVmIGFsbG9jYXRpb25zIHNpbmNlIGl0IGlzIHRoZSBURUUNCj4gPiAoT1AtVEVF
LCBBTUQtVEVFLCBUUy1URUUsIG9yIGEgZnV0dXJlIFFURUUpIHdoaWNoIHNldHMgdXAgdGhlIHJl
c3RyaWN0aW9ucw0KPiA+IGZvciB0aGUgbWVtb3J5IHVzZWQgZm9yIHRoZSBETUEtYnVmcy4NCj4N
Cj4gVGhhbmtzIGZvciBwcm9wb3NpbmcgdGhpcyBpbnRlcmZhY2UuIElNSE8sIHRoaXMgc29sdXRp
b24gd2lsbCBhZGRyZXNzDQo+IG1hbnkgY29uY2VybnMgcmFpc2VkIGZvciB0aGUgcHJpb3IgdmVu
ZG9yIHNwZWNpZmljIERNQSBoZWFwcyBhcHByb2FjaA0KPiBbMV0gYXMgZm9sbG93czoNCj4NCj4g
MS4gVXNlci1zcGFjZSBpbnRlcmFjdGluZyB3aXRoIHRoZSBURUUgc3Vic3lzdGVtIGZvciByZXN0
cmljdGVkIG1lbW9yeQ0KPiBhbGxvY2F0aW9uIG1ha2VzIGl0IG9idmlvdXMgdGhhdCB0aGUgcmV0
dXJuZWQgRE1BIGJ1ZiBjYW4ndCBiZQ0KPiBkaXJlY3RseSBtYXBwZWQgYnkgdGhlIENQVS4NCj4N
Cj4gMi4gQWxsIHRoZSBsb3cgbGV2ZWwgcGxhdGZvcm0gZGV0YWlscyBnZXRzIGFic3RyYWN0ZWQg
b3V0IGZvcg0KPiB1c2VyLXNwYWNlIHJlZ2FyZGluZyBob3cgdGhlIHBsYXRmb3JtIHNwZWNpZmlj
IG1lbW9yeSByZXN0cmljdGlvbg0KPiBjb21lcyBpbnRvIHBsYXkuDQo+DQo+IDMuIFVzZXItc3Bh
Y2UgZG9lc24ndCBoYXZlIHRvIGRlYWwgd2l0aCBob2xkaW5nIDIgRE1BIGJ1ZmZlcg0KPiByZWZl
cmVuY2VzLCBvbmUgYWZ0ZXIgYWxsb2NhdGlvbiBmcm9tIERNQSBoZWFwIGFuZCBvdGhlciBmb3IN
Cj4gY29tbXVuaWNhdGlvbiB3aXRoIHRoZSBURUUgc3Vic3lzdGVtLg0KPg0KPiA0LiBBbGxvd3Mg
Zm9yIGJldHRlciBjby1vcmRpbmF0aW9uIHdpdGggb3RoZXIga2VybmVsIHN1YnN5c3RlbXMNCj4g
ZGVhbGluZyB3aXRoIHJlc3RyaWN0ZWQgRE1BLWJ1ZnMuDQo+DQo+IFsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMjQwNTE1MTEyMzA4LjEwMTcxLTEteW9uZy53
dUBtZWRpYXRlay5jb20vDQo+DQo+ID4NCj4gPiBJJ3ZlIGFkZGVkIGEgbmV3IElPQ1RMLCBURUVf
SU9DX1JTVE1FTV9BTExPQywgdG8gYWxsb2NhdGUgdGhlIHJlc3RyaWN0ZWQNCj4gPiBETUEtYnVm
cy4gVGhpcyBuZXcgSU9DVEwgcmVhY2hlcyB0aGUgYmFja2VuZCBURUUgZHJpdmVyLCBhbGxvd2lu
ZyBpdCB0bw0KPiA+IGNob29zZSBob3cgdG8gYWxsb2NhdGUgdGhlIHJlc3RyaWN0ZWQgcGh5c2lj
YWwgbWVtb3J5Lg0KPiA+DQo+ID4gVEVFX0lPQ19SU1RNRU1fQUxMT0MgaXMgcXVpdGUgc2ltaWxh
ciB0byBURUVfSU9DX1NITV9BTExPQyBzbyBpdCdzIHRlbXB0aW5nDQo+ID4gdG8gZXh0ZW5kIFRF
RV9JT0NfU0hNX0FMTE9DIHdpdGggdHdvIG5ldyBmbGFncw0KPiA+IFRFRV9JT0NfU0hNX0ZMQUdf
U0VDVVJFX1ZJREVPIGFuZCBURUVfSU9DX1NITV9GTEFHX1NFQ1VSRV9UUlVTVEVEX1VJIGZvcg0K
PiA+IHRoZSBzYW1lIGZlYXR1cmUuIEhvd2V2ZXIsIGl0IG1pZ2h0IGJlIGEgYml0IGNvbmZ1c2lu
ZyBzaW5jZQ0KPiA+IFRFRV9JT0NfU0hNX0FMTE9DIG9ubHkgcmV0dXJucyBhbiBhbm9ueW1vdXMg
ZmlsZSBkZXNjcmlwdG9yLCBidXQNCj4gPiBURUVfSU9DX1NITV9GTEFHX1NFQ1VSRV9WSURFTyBh
bmQgVEVFX0lPQ19TSE1fRkxBR19TRUNVUkVfVFJVU1RFRF9VSSB3b3VsZA0KPiA+IHJldHVybiBh
IERNQS1idWYgZmlsZSBkZXNjcmlwdG9yIGluc3RlYWQuIFdoYXQgZG8gb3RoZXJzIHRoaW5rPw0K
Pg0KPiBJIHRoaW5rIGl0J3MgYmV0dGVyIHRvIGtlZXAgaXQgYXMgYSBzZXBhcmF0ZSBJT0NUTCBn
aXZlbiB0aGUgcHJpbWFyeQ0KPiBvYmplY3RpdmUgb2YgYnVmZmVyIGFsbG9jYXRpb24gYW5kIGl0
J3MgdXNhZ2UuDQoNCkFncmVlZC4NCg0KVGhhbmtzLA0KSmVucw0KDQo+DQo+IC1TdW1pdA0KPg0K
PiA+DQo+ID4gVGhpcyBjYW4gYmUgdGVzdGVkIG9uIFFFTVUgd2l0aCB0aGUgZm9sbG93aW5nIHN0
ZXBzOg0KPiA+IHJlcG8gaW5pdCAtdSBodHRwczovL2dpdGh1Yi5jb20vamVuc3dpLWxpbmFyby9t
YW5pZmVzdC5naXQgLW0gcWVtdV92OC54bWwgXA0KPiA+ICAgICAgICAgLWIgcHJvdG90eXBlL3Nk
cC12Mg0KPiA+IHJlcG8gc3luYyAtajgNCj4gPiBjZCBidWlsZA0KPiA+IG1ha2UgdG9vbGNoYWlu
cyAtajQNCj4gPiBtYWtlIGFsbCAtaiQobnByb2MpDQo+ID4gbWFrZSBydW4tb25seQ0KPiA+ICMg
bG9naW4gYW5kIGF0IHRoZSBwcm9tcHQ6DQo+ID4geHRlc3QgLS1zZHAtYmFzaWMNCj4gPg0KPiA+
IGh0dHBzOi8vb3B0ZWUucmVhZHRoZWRvY3MuaW8vZW4vbGF0ZXN0L2J1aWxkaW5nL3ByZXJlcXVp
c2l0ZXMuaHRtbA0KPiA+IGxpc3QgZGVwZW5kZW5jaWVzIG5lZWRlZCB0byBidWlsZCB0aGUgYWJv
dmUuDQo+ID4NCj4gPiBUaGUgdGVzdHMgYXJlIHByZXR0eSBiYXNpYywgbW9zdGx5IGNoZWNraW5n
IHRoYXQgYSBUcnVzdGVkIEFwcGxpY2F0aW9uIGluDQo+ID4gdGhlIHNlY3VyZSB3b3JsZCBjYW4g
YWNjZXNzIGFuZCBtYW5pcHVsYXRlIHRoZSBtZW1vcnkuIFRoZXJlIGFyZSBhbHNvIHNvbWUNCj4g
PiBuZWdhdGl2ZSB0ZXN0cyBmb3Igb3V0IG9mIGJvdW5kcyBidWZmZXJzIGV0Yy4NCj4gPg0KPiA+
IFRoYW5rcywNCj4gPiBKZW5zDQo+ID4NCj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC8yMDI0MDgzMDA3MDM1MS4yODU1OTE5LTEtamVucy53aWtsYW5kZXJAbGluYXJvLm9yZy8N
Cj4gPiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjQwNTE1MTEyMzA4
LjEwMTcxLTEteW9uZy53dUBtZWRpYXRlay5jb20vDQo+ID4gWzNdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xrbWwvMjAyMjA4MDUxMzUzMzAuOTcwLTEtb2xpdmllci5tYXNzZUBueHAuY29tLw0K
PiA+DQo+ID4gQ2hhbmdlcyBzaW5jZSB0aGUgVjEgUkZDOg0KPiA+ICogQmFzZWQgb24gdjYuMTEN
Cj4gPiAqIENvbXBsZXRlIHJld3JpdGUsIHJlcGxhY2luZyB0aGUgcmVzdHJpY3RlZCBoZWFwIHdp
dGggVEVFX0lPQ19SU1RNRU1fQUxMT0MNCj4gPg0KPiA+IENoYW5nZXMgc2luY2UgT2xpdmllcidz
IHBvc3QgWzJdOg0KPiA+ICogQmFzZWQgb24gWW9uZyBXdSdzIHBvc3QgWzFdIHdoZXJlIG11Y2gg
b2YgZG1hLWJ1ZiBoYW5kbGluZyBpcyBkb25lIGluDQo+ID4gICB0aGUgZ2VuZXJpYyByZXN0cmlj
dGVkIGhlYXANCj4gPiAqIFNpbXBsaWZpY2F0aW9ucyBhbmQgY2xlYW51cA0KPiA+ICogTmV3IGNv
bW1pdCBtZXNzYWdlIGZvciAiZG1hLWJ1ZjogaGVhcHM6IGFkZCBMaW5hcm8gcmVzdHJpY3RlZCBk
bWFidWYgaGVhcA0KPiA+ICAgc3VwcG9ydCINCj4gPiAqIFJlcGxhY2VkIHRoZSB3b3JkICJzZWN1
cmUiIHdpdGggInJlc3RyaWN0ZWQiIHdoZXJlIGFwcGxpY2FibGUNCj4gPg0KPiA+IEplbnMgV2lr
bGFuZGVyICgyKToNCj4gPiAgIHRlZTogYWRkIHJlc3RyaWN0ZWQgbWVtb3J5IGFsbG9jYXRpb24N
Cj4gPiAgIG9wdGVlOiBzdXBwb3J0IHJlc3RyaWN0ZWQgbWVtb3J5IGFsbG9jYXRpb24NCj4gPg0K
PiA+ICBkcml2ZXJzL3RlZS9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDEgKw0KPiA+ICBkcml2
ZXJzL3RlZS9vcHRlZS9jb3JlLmMgICAgICAgICAgfCAgMjEgKysrKw0KPiA+ICBkcml2ZXJzL3Rl
ZS9vcHRlZS9vcHRlZV9wcml2YXRlLmggfCAgIDYgKw0KPiA+ICBkcml2ZXJzL3RlZS9vcHRlZS9v
cHRlZV9zbWMuaCAgICAgfCAgMzUgKysrKysrDQo+ID4gIGRyaXZlcnMvdGVlL29wdGVlL3NtY19h
YmkuYyAgICAgICB8ICA0NSArKysrKystDQo+ID4gIGRyaXZlcnMvdGVlL3RlZV9jb3JlLmMgICAg
ICAgICAgICB8ICAzMyArKysrLQ0KPiA+ICBkcml2ZXJzL3RlZS90ZWVfcHJpdmF0ZS5oICAgICAg
ICAgfCAgIDIgKw0KPiA+ICBkcml2ZXJzL3RlZS90ZWVfcnN0bWVtLmMgICAgICAgICAgfCAyMDAg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvdGVlL3RlZV9zaG0u
YyAgICAgICAgICAgICB8ICAgMiArDQo+ID4gIGRyaXZlcnMvdGVlL3RlZV9zaG1fcG9vbC5jICAg
ICAgICB8ICA2OSArKysrKysrKysrLQ0KPiA+ICBpbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmggICAg
ICAgICAgfCAgIDYgKw0KPiA+ICBpbmNsdWRlL2xpbnV4L3RlZV9kcnYuaCAgICAgICAgICAgfCAg
IDkgKysNCj4gPiAgaW5jbHVkZS91YXBpL2xpbnV4L3RlZS5oICAgICAgICAgIHwgIDMzICsrKyst
DQo+ID4gIDEzIGZpbGVzIGNoYW5nZWQsIDQ1NSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy90ZWUvdGVlX3JzdG1lbS5jDQo+ID4N
Cj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
