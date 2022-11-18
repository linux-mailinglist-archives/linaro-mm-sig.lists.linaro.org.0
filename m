Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C27D762FE04
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 20:32:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E9C83F5D9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 19:32:17 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lists.linaro.org (Postfix) with ESMTPS id ABF563EC4E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 19:31:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=jM3AmfCW;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f179.google.com with SMTP id m204so6418941oib.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 11:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S4aUMnezBjeTl1jsDQJ0t2bffjzqiY8JJHUDYwCqwLA=;
        b=jM3AmfCW/2nHZxFgGS9Heu3pQvdP14z1y35P4H80L5GvxTjhGcP7LFZgivC4gaY60w
         nN+fDhHzgWT+2NAIbiSfL6Rns9ljZnWLIlo99CYzOUugLbs2wTkpPqm/GQQc12jBVjZR
         4+9kRbCPA2VzSdqbnS9ygKwPs6bsFRbks995B1w1BCOjrw1RMcFhLHExZZx4o2k8qTgr
         TjmsbBTlyhwqdXMkFnzdwd9h1r6hFKN8kO0kSFSZO9Ik7Hz28tqbGqJDGyBpyOfRyIOb
         v1S32k4HE0ADNTZ2XWf1Pm3h52Ya5QeOaA51YlzhXUK1zboM4QvbwyM5ahK1hNR7nmS+
         qEMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S4aUMnezBjeTl1jsDQJ0t2bffjzqiY8JJHUDYwCqwLA=;
        b=sbt1xNDW1B+b0LwDVPr+7DbRotovfT4g0ddJOe73PPLFYnbYUSq9IJX82PxkF1KHuP
         koiiM1xbytwuGWHMu7fU9V5/FmA0LRzRlef/XHlrmyhUk8EGLi/kFTQ0206kHUW1pkqz
         qo/WoUat4Qqww57NY1JH62B2qVcPsRXABzchdHiE2XcOL3RkricQzbg3QUBfT5WovcKa
         DGFA+NtIvqT3RKEdASnuKLpnD7T5ZoNL5SsAF8N87nmTARO/n0s2jixskCXvz8Vm8pJg
         bIivbgzb6VW7nOB7VV1vVaf+8ucjFsSUjIuLx0pCCN7vYWxut1EurCbYZt8DaT4VogMv
         +T5A==
X-Gm-Message-State: ANoB5plhLinENWGsx7dm3OzFTZUwUOXF/4gQBxZ0Ojg6xD2HyLFLYlZw
	o56gFmkIbZiBe5T7RIhoGj440DsdnE92BU3v0ec=
X-Google-Smtp-Source: AA0mqf7f2OW5VJGSiFWIbV1iX15MWwqhFk2z0a4peRT5QDLGMcj5gnnNu7gdRSqtSDb5fD6MgxHrYtioX+SoXulEiT4=
X-Received: by 2002:a05:6808:2086:b0:354:46fc:9bb3 with SMTP id
 s6-20020a056808208600b0035446fc9bb3mr4221461oiw.38.1668799918044; Fri, 18 Nov
 2022 11:31:58 -0800 (PST)
MIME-Version: 1.0
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com> <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com> <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com> <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com> <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com> <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com> <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com> <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
 <b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com> <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
In-Reply-To: <346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 18 Nov 2022 11:32:19 -0800
Message-ID: <CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: ABF563EC4E
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.676];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,chromium.org,pengutronix.de,fooishbar.org,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[ndufresne.ca:email];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.179:from];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: RILXM4YK2BKQPUGKNDFWAC4VDPE5SAH2
X-Message-ID-Hash: RILXM4YK2BKQPUGKNDFWAC4VDPE5SAH2
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RILXM4YK2BKQPUGKNDFWAC4VDPE5SAH2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBOb3YgMTcsIDIwMjIgYXQgNzozOCBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
QG5kdWZyZXNuZS5jYT4gd3JvdGU6DQo+DQo+IExlIGpldWRpIDE3IG5vdmVtYnJlIDIwMjIgw6Ag
MTM6MTAgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXQgOg0KPiA+ID4gPiBETUEtQnVm
IGxldCdzIHRoZSBleHBvcnRlciBzZXR1cCB0aGUgRE1BIGFkZHJlc3NlcyB0aGUgaW1wb3J0ZXIg
dXNlcyB0bw0KPiA+ID4gPiBiZSBhYmxlIHRvIGRpcmVjdGx5IGRlY2lkZWQgd2hlcmUgYSBjZXJ0
YWluIG9wZXJhdGlvbiBzaG91bGQgZ28uIEUuZy4gd2UNCj4gPiA+ID4gaGF2ZSBjYXNlcyB3aGVy
ZSBmb3IgZXhhbXBsZSBhIFAyUCB3cml0ZSBkb2Vzbid0IGV2ZW4gZ28gdG8gbWVtb3J5LCBidXQN
Cj4gPiA+ID4gcmF0aGVyIGEgZG9vcmJlbGwgQkFSIHRvIHRyaWdnZXIgYW5vdGhlciBvcGVyYXRp
b24uIFRocm93aW5nIGluIENQVQ0KPiA+ID4gPiByb3VuZCB0cmlwcyBmb3IgZXhwbGljaXQgb3du
ZXJzaGlwIHRyYW5zZmVyIGNvbXBsZXRlbHkgYnJlYWtzIHRoYXQNCj4gPiA+ID4gY29uY2VwdC4N
Cj4gPiA+IEl0IHNvdW5kcyBsaWtlIHdlIHNob3VsZCBoYXZlIGEgZG1hX2Rldl9pc19jb2hlcmVu
dF93aXRoX2RldigpIHdoaWNoDQo+ID4gPiBhY2NlcHRzIHR3byAob3IgYW4gYXJyYXk/KSBvZiBk
ZXZpY2VzIGFuZCB0ZWxscyB0aGUgY2FsbGVyIHdoZXRoZXIgdGhlDQo+ID4gPiBkZXZpY2VzIG5l
ZWQgZXhwbGljaXQgb3duZXJzaGlwIHRyYW5zZmVyLg0KPiA+DQo+ID4gTm8sIGV4YWN0bHkgdGhh
dCdzIHRoZSBjb25jZXB0IEknbSBwdXNoaW5nIGJhY2sgb24gdmVyeSBoYXJkIGhlcmUuDQo+ID4N
Cj4gPiBJbiBvdGhlciB3b3JkcyBleHBsaWNpdCBvd25lcnNoaXAgdHJhbnNmZXIgaXMgbm90IHNv
bWV0aGluZyB3ZSB3b3VsZA0KPiA+IHdhbnQgYXMgcmVxdWlyZW1lbnQgaW4gdGhlIGZyYW1ld29y
aywgY2F1c2Ugb3RoZXJ3aXNlIHdlIGJyZWFrIHRvbnMgb2YNCj4gPiB1c2UgY2FzZXMgd2hpY2gg
cmVxdWlyZSBjb25jdXJyZW50IGFjY2VzcyB0byB0aGUgdW5kZXJseWluZyBidWZmZXIuDQo+DQo+
IEknbSBub3QgcHVzaGluZyBmb3IgdGhpcyBzb2x1dGlvbiwgYnV0IHJlYWxseSBmZWx0IHRoZSBu
ZWVkIHRvIGNvcnJlY3QgeW91IGhlcmUuDQo+IEkgaGF2ZSBxdWl0ZSBzb21lIGV4cGVyaWVuY2Ug
d2l0aCBvd25lcnNoaXAgdHJhbnNmZXIgbWVjaGFuaXNtLCBhcyB0aGlzIGlzIGhvdw0KPiBHU3Ry
ZWFtZXIgZnJhbWV3b3JrIHdvcmtzIHNpbmNlIDIwMDAuIENvbmN1cnJlbnQgYWNjZXNzIGlzIGEg
cmVhbGx5IGNvbW1vbiB1c2UNCj4gY2FzZXMgYW5kIGl0IGlzIHF1aXRlIHdlbGwgZGVmaW5lZCBp
biB0aGF0IGNvbnRleHQuIFRoZSBicmFja2V0aW5nIHN5c3RlbSAoaW4NCj4gdGhpcyBjYXNlIGNh
bGxlZCBtYXAoKSB1bm1hcCgpLCB3aXRoIGZsYWcgc3RhdGluZyB0aGUgdXNhZ2UgaW50ZW50aW9u
IGxpa2UgcmVhZHMNCj4gYW5kIHdyaXRlKSBpcyBjb21iaW5lZCB0aGUgdGhlIHJlZmNvdW50LiBU
aGUgYmFzaWMgcnVsZXMgYXJlIHNpbXBsZToNCg0KVGhpcyBpcyBhbGwgQ1BVIG9yaWVudGVkLCBJ
IHRoaW5rIENocmlzdGlhbiBpcyB0YWxraW5nIGFib3V0IHRoZSBjYXNlDQp3aGVyZSBvd25lcnNo
aXAgdHJhbnNmZXIgaGFwcGVucyB3aXRob3V0IENQVSBpbnZvbHZlbWVudCwgc3VjaCBhcyB2aWEN
CkdQVSB3YWl0aW5nIG9uIGEgZmVuY2UNCg0KQlIsDQotUg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
