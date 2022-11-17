Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECB662D721
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 10:35:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F4663F592
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 09:35:56 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id B70593EFA4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 09:35:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=FOWB3hyB;
	spf=pass (lists.linaro.org: domain of tfiga@chromium.org designates 209.85.218.45 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-ej1-f45.google.com with SMTP id gv23so3667750ejb.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 01:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9FT4n1wjg5nORyNmE5mwITth+m4dxBnfwmgGDsONNwY=;
        b=FOWB3hyB3Kd8JoJLo5QF1W+7xmsqIjuDHTVD6rAXxB7bX7Y0LKlEyX84RuRXELLE0E
         5TS+kcfY6CvArwqES+0/oyD/l5GIuVupMqe0VMC5PBnMeZxRRIJBfvt7ASakYK7tjIrJ
         bEtsHwQXJhUGgZqtbbnDHTGV/ghpd+CKFyrVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9FT4n1wjg5nORyNmE5mwITth+m4dxBnfwmgGDsONNwY=;
        b=UouL67dnlux50caW0FpUdc0segsP+4VVZFP4e6i9Mw8dEhzWPROOqqoFShbCT9F++L
         G+nsycfu4tTw+S38BN8VdA16EDs9sSzK61/gpKAJaHQyI4Qu7DAj+Mncc3Z+PzqC2R6L
         zTCaLAMQb5dek7iy8Gub1i7N8VZCF10+jxpqWdlHvRQXYRwubT8lJs9XlDx/IO12JJ1b
         UmUgKIly5YTcuRyqZlmwpvhj7WetlCqF6mB0WJIEnLJmSbgxp6VZQghIvXt5Wzvcdn/n
         vkTIWbN9BEaey90C9Ouh3SYD2kxY2ciYQlfCHJvTnFD6708q8LcLPmF1kf0i7/BNShVF
         ICVA==
X-Gm-Message-State: ANoB5pniZmJcuW+Q0H27cNKrKJjOj+6XbhRmtNSB1Wen0Y1uDLG/BmxN
	LOIlJqUPpTE/844tMc+r+NiCwyAcqUlFrg==
X-Google-Smtp-Source: AA0mqf7OEFCWjO3+YR72JdK/JCFztG9N0jBf8o+nScq8by8rcnr2i5wL4NBd2vIRBJqg8T/75HQ2RQ==
X-Received: by 2002:a17:906:b0d7:b0:78d:39e8:89eb with SMTP id bk23-20020a170906b0d700b0078d39e889ebmr1388707ejb.639.1668677736459;
        Thu, 17 Nov 2022 01:35:36 -0800 (PST)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com. [209.85.218.45])
        by smtp.gmail.com with ESMTPSA id k9-20020a17090632c900b0079e11b8e891sm121481ejk.125.2022.11.17.01.35.34
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Nov 2022 01:35:34 -0800 (PST)
Received: by mail-ej1-f45.google.com with SMTP id k2so3680207ejr.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 01:35:34 -0800 (PST)
X-Received: by 2002:a17:906:a889:b0:7ad:bd02:f491 with SMTP id
 ha9-20020a170906a88900b007adbd02f491mr1470272ejb.703.1668677733356; Thu, 17
 Nov 2022 01:35:33 -0800 (PST)
MIME-Version: 1.0
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com> <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com> <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com> <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com> <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com> <4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
 <cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com> <0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
 <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
In-Reply-To: <1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 17 Nov 2022 18:35:21 +0900
X-Gmail-Original-Message-ID: <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
Message-ID: <CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: B70593EFA4
X-Spamd-Result: default: False [-8.10 / 15.00];
	DWL_DNSWL_HI(-3.50)[chromium.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.218.45:received,209.85.218.45:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ej1-f45.google.com:helo,mail-ej1-f45.google.com:rdns];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,fooishbar.org,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: RNR5KN5Q6ZIIIOPKZ2TLKKY3ZZV7K3TO
X-Message-ID-Hash: RNR5KN5Q6ZIIIOPKZ2TLKKY3ZZV7K3TO
X-MailFrom: tfiga@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Daniel Stone <daniel@fooishbar.org>, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RNR5KN5Q6ZIIIOPKZ2TLKKY3ZZV7K3TO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuIGFuZCBldmVyeW9uZSwNCg0KT24gVGh1LCBOb3YgMywgMjAyMiBhdCA0OjE0
IEFNIENocmlzdGlhbiBLw7ZuaWcNCjxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4g
d3JvdGU6DQo+DQo+IEFtIDAyLjExLjIyIHVtIDE4OjEwIHNjaHJpZWIgTHVjYXMgU3RhY2g6DQo+
ID4gQW0gTWl0dHdvY2gsIGRlbSAwMi4xMS4yMDIyIHVtIDEzOjIxICswMTAwIHNjaHJpZWIgQ2hy
aXN0aWFuIEvDtm5pZzoNCj4gPiBbU05JUF0NCj4gPj4gSXQgd291bGQganVzdCBiZSBkb2luZyB0
aGlzIGZvciB0aGUgaW1wb3J0ZXIgYW5kIGV4YWN0bHkgdGhhdA0KPiA+PiB3b3VsZCBiZSBiYWQg
ZGVzaWduIGJlY2F1c2Ugd2UgdGhlbiBoYXZlIGhhbmRsaW5nIGZvciB0aGUgZGlzcGxheSBkcml2
ZXINCj4gPj4gb3V0c2lkZSBvZiB0aGUgZHJpdmVyLg0KPiA+Pg0KPiA+IFRoZSBkcml2ZXIgd291
bGQgaGF2ZSB0byBkbyB0aG9zZSBjYWNoZSBtYWludGVuYW5jZSBvcGVyYXRpb25zIGlmIGl0DQo+
ID4gZGlyZWN0bHkgd29ya2VkIHdpdGggYSBub24tY29oZXJlbnQgZGV2aWNlLiBEb2luZyBpdCBm
b3IgdGhlIGltcG9ydGVyDQo+ID4gaXMganVzdCBkb2luZyBpdCBmb3IgYW5vdGhlciBkZXZpY2Us
IG5vdCB0aGUgb25lIGRpcmVjdGx5IG1hbmFnZWQgYnkNCj4gPiB0aGUgZXhwb3J0ZXIuDQo+ID4N
Cj4gPiBJIHJlYWxseSBkb24ndCBzZWUgdGhlIGRpZmZlcmVuY2UgdG8gdGhlIG90aGVyIGRtYS1i
dWYgb3BzOiBpbg0KPiA+IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQgdGhlIGV4cG9ydGVyIG1hcHMg
dGhlIGRtYS1idWYgb24gYmVoYWxmIGFuZCBpbnRvDQo+ID4gdGhlIGFkZHJlc3Mgc3BhY2Ugb2Yg
dGhlIGltcG9ydGVyLiBXaHkgd291bGQgY2FjaGUgbWFpbnRlbmFuY2UgYmUgYW55DQo+ID4gZGlm
ZmVyZW50Pw0KPg0KPiBUaGUgaXNzdWUgaGVyZSBpcyB0aGUgZXhwbGljaXQgb3duZXJzaGlwIHRy
YW5zZmVyLg0KPg0KPiBXZSBpbnRlbnRpb25hbGx5IGRlY2lkZWQgYWdhaW5zdCB0aGF0IGJlY2F1
c2UgaXQgYnJlYWtzIHRvbnMgb2YgdXNlDQo+IGNhc2VzIGFuZCBpcyBhdCBsZWFzdCBieSBtZSBh
bmQgYSBjb3VwbGUgb2Ygb3RoZXJzIHNlZW4gYXMgZ2VuZXJhbGx5DQo+IGRlc2lnbiBmYWlsdXJl
IG9mIHRoZSBMaW51eCBETUEtQVBJLg0KDQpGaXJzdCBvZiBhbGwsIHRoYW5rcyBmb3Igc3RhcnRp
bmcgdGhlIGRpc2N1c3Npb24gYW5kIHNvcnJ5IGZvciBiZWluZw0KbGF0ZSB0byB0aGUgcGFydHku
IE1heSBJIGFzayB5b3UgdG8ga2VlcCBtZSBvbiBDQyBmb3IgYW55IGNoYW5nZXMgdGhhdA0KdG91
Y2ggdGhlIFY0TDIgdmlkZW9idWYyIGZyYW1ld29yaywgYXMgYSBtYWludGFpbmVyIG9mIGl0PyBJ
J20gb2theQ0KYmVpbmcgY29waWVkIG9uIHRoZSBlbnRpcmUgc2VyaWVzLCBubyBuZWVkIHRvIHBp
Y2sgdGhlIHNwZWNpZmljDQpwYXRjaGVzLiBUaGFua3MgaW4gYWR2YW5jZS4NCg0KSSBhZ3JlZSB0
aGF0IHdlIGhhdmUgc29tZSBkZXNpZ24gaXNzdWVzIGluIHRoZSBjdXJyZW50IERNQS1idWYNCmZy
YW1ld29yaywgYnV0IEknZCB0cnkgdG8gYXBwcm9hY2ggaXQgYSBiaXQgZGlmZmVyZW50bHkuIElu
c3RlYWQgb2YNCmZvY3VzaW5nIG9uIHRoZSBpc3N1ZXMgaW4gdGhlIGN1cnJlbnQgZGVzaWduLCBj
b3VsZCB3ZSB3cml0ZSBkb3duIG91cg0KcmVxdWlyZW1lbnRzIGFuZCB0cnkgdG8gY29tZSB1cCB3
aXRoIGhvdyBhIGNvcnJlY3QgZGVzaWduIHdvdWxkIGxvb2sNCmxpa2U/IChBIGxvdCBvZiB0aGF0
IGhhcyBiZWVuIGFscmVhZHkgbWVudGlvbmVkIGluIHRoaXMgdGhyZWFkLCBidXQgSQ0KZmluZCBp
dCBxdWl0ZSBkaWZmaWN1bHQgdG8gZm9sbG93IGFuZCBpdCBtaWdodCBub3QgYmUgYSBjb21wbGV0
ZSB2aWV3DQplaXRoZXIuKQ0KDQpUaGF0IHNhaWQsIGxldCBtZSBhZGRyZXNzIGEgZmV3IGFzcGVj
dHMgYWxyZWFkeSBtZW50aW9uZWQsIHRvIG1ha2UNCnN1cmUgdGhhdCBldmVyeW9uZSBpcyBvbiB0
aGUgc2FtZSBwYWdlLg0KDQo+DQo+IERNQS1CdWYgbGV0J3MgdGhlIGV4cG9ydGVyIHNldHVwIHRo
ZSBETUEgYWRkcmVzc2VzIHRoZSBpbXBvcnRlciB1c2VzIHRvDQo+IGJlIGFibGUgdG8gZGlyZWN0
bHkgZGVjaWRlZCB3aGVyZSBhIGNlcnRhaW4gb3BlcmF0aW9uIHNob3VsZCBnby4gRS5nLiB3ZQ0K
PiBoYXZlIGNhc2VzIHdoZXJlIGZvciBleGFtcGxlIGEgUDJQIHdyaXRlIGRvZXNuJ3QgZXZlbiBn
byB0byBtZW1vcnksIGJ1dA0KPiByYXRoZXIgYSBkb29yYmVsbCBCQVIgdG8gdHJpZ2dlciBhbm90
aGVyIG9wZXJhdGlvbi4gVGhyb3dpbmcgaW4gQ1BVDQo+IHJvdW5kIHRyaXBzIGZvciBleHBsaWNp
dCBvd25lcnNoaXAgdHJhbnNmZXIgY29tcGxldGVseSBicmVha3MgdGhhdCBjb25jZXB0Lg0KDQpJ
dCBzb3VuZHMgbGlrZSB3ZSBzaG91bGQgaGF2ZSBhIGRtYV9kZXZfaXNfY29oZXJlbnRfd2l0aF9k
ZXYoKSB3aGljaA0KYWNjZXB0cyB0d28gKG9yIGFuIGFycmF5Pykgb2YgZGV2aWNlcyBhbmQgdGVs
bHMgdGhlIGNhbGxlciB3aGV0aGVyIHRoZQ0KZGV2aWNlcyBuZWVkIGV4cGxpY2l0IG93bmVyc2hp
cCB0cmFuc2Zlci4gQmFzZWQgb24gdGhhdCwgeW91ciBkcml2ZXJzDQp3b3VsZCBpbnN0YWxsIHRo
ZSBETUEgY29tcGxldGlvbiAocHJlc3VtYWJseSBJUlEpIGhhbmRsZXJzIG9yIG5vdC4NCkl0J3Mg
bmVjZXNzYXJ5IHNpbmNlIGl0J3Mgbm90IHVuY29tbW9uIHRoYXQgZGV2aWNlcyBBIGFuZCBCIGNv
dWxkIGJlDQppbiB0aGUgc2FtZSBjb2hlcmVuY3kgZG9tYWluLCB3aGlsZSBDIGNvdWxkIGJlIGlu
IGEgZGlmZmVyZW50IG9uZSwgYnV0DQp5b3UgbWF5IHN0aWxsIHdhbnQgdGhlbSB0byBleGNoYW5n
ZSBkYXRhIHRocm91Z2ggRE1BLWJ1ZnMuIEV2ZW4gaWYgaXQNCm1lYW5zIHRoZSBuZWVkIGZvciBz
b21lIGV4dHJhIHJvdW5kIHRyaXBzIGl0IHdvdWxkIGxpa2VseSBiZSBtb3JlDQplZmZpY2llbnQg
dGhhbiBhIGZ1bGwgbWVtb3J5IGNvcHkgKG1pZ2h0IG5vdCBiZSB0cnVlIDEwMCUgb2YgdGhlDQp0
aW1lKS4NCg0KPg0KPiBBZGRpdGlvbmFsIHRvIHRoYXQgYSB2ZXJ5IGJhc2ljIGNvbmNlcHQgb2Yg
RE1BLWJ1ZiBpcyB0aGF0IHRoZSBleHBvcnRlcg0KPiBwcm92aWRlcyB0aGUgYnVmZmVyIGFzIGl0
IGlzIGFuZCBqdXN0IGRvdWJsZSBjaGVja3MgaWYgdGhlIGltcG9ydGVyIGNhbg0KPiBhY2Nlc3Mg
aXQuIEZvciBleGFtcGxlIHdlIGhhdmUgWEdNSSBsaW5rcyB3aGljaCBtYWtlcyBtZW1vcnkgYWNj
ZXNzaWJsZQ0KPiB0byBvdGhlciBkZXZpY2VzIG9uIHRoZSBzYW1lIGJ1cywgYnV0IG5vdCB0byBQ
Q0llIGRldmljZSBhbmQgbm90IGV2ZW4gdG8NCj4gdGhlIENQVS4gT3RoZXJ3aXNlIHlvdSB3b3Vs
ZG4ndCBiZSBhYmxlIHRvIGltcGxlbWVudCB0aGluZ3MgbGlrZSBzZWN1cmUNCj4gZGVjb2Rpbmcg
d2hlcmUgdGhlIGRhdGEgaXNuJ3QgZXZlbiBhY2Nlc3NpYmxlIG91dHNpZGUgdGhlIGRldmljZSB0
bw0KPiBkZXZpY2UgbGluay4NCg0KRnVsbHkgYWdyZWVkLg0KDQo+DQo+IFNvIGlmIGEgZGV2aWNl
IGRyaXZlciB1c2VzIGNhY2hlZCBzeXN0ZW0gbWVtb3J5IG9uIGFuIGFyY2hpdGVjdHVyZSB3aGlj
aA0KPiBkZXZpY2VzIHdoaWNoIGNhbid0IGFjY2VzcyBpdCB0aGUgcmlnaHQgYXBwcm9hY2ggaXMg
Y2xlYXJseSB0byByZWplY3QNCj4gdGhlIGFjY2Vzcy4NCg0KSSdkIGxpa2UgdG8gYWNjZW50IHRo
ZSBmYWN0IHRoYXQgInJlcXVpcmVzIGNhY2hlIG1haW50ZW5hbmNlIiAhPSAiY2FuJ3QgYWNjZXNz
Ii4NCg0KPg0KPiBXaGF0IHdlIGNhbiBkbyBpcyB0byByZXZlcnNlIHRoZSByb2xlIG9mIHRoZSBl
eHBvcnRlciBhbmQgaW1wb3J0ZXIgYW5kDQo+IGxldCB0aGUgZGV2aWNlIHdoaWNoIG5lZWRzIHVu
Y2FjaGVkIG1lbW9yeSB0YWtlIGNvbnRyb2wuIFRoaXMgd2F5IHRoaXMNCj4gZGV2aWNlIGNhbiBp
bnNlcnQgb3BlcmF0aW9ucyBhcyBuZWVkZWQsIGUuZy4gZmx1c2ggcmVhZCBjYWNoZXMgb3INCj4g
aW52YWxpZGF0ZSB3cml0ZSBjYWNoZXMuDQo+DQoNCihQdXR0aW5nIGFzaWRlIHRoZSBjYXNlcyB3
aGVuIHRoZSBhY2Nlc3MgaXMgcmVhbGx5IGltcG9zc2libGUgYXQgYWxsLikNCkNvcnJlY3QgbWUg
aWYgSSdtIHdyb25nLCBidXQgaXNuJ3QgdGhhdCBiZWNhdXNlIHdlIGRvbid0IGhhdmUgYSBwcm9w
ZXINCmhvb2sgZm9yIHRoZSBpbXBvcnRlciB0byB0ZWxsIHRoZSBETUEtYnVmIGZyYW1ld29yayB0
byBwcmVwYXJlIHRoZQ0KYnVmZmVyIGZvciBpdHMgYWNjZXNzPw0KDQo+IFRoaXMgaXMgd2hhdCB3
ZSBoYXZlIGFscmVhZHkgZG9uZSBpbiBETUEtYnVmIGFuZCB3aGF0IGFscmVhZHkgd29ya3MNCj4g
cGVyZmVjdGx5IGZpbmUgd2l0aCB1c2UgY2FzZXMgd2hpY2ggYXJlIGV2ZW4gbW9yZSBjb21wbGlj
YXRlZCB0aGFuIGENCj4gc2ltcGxlIHdyaXRlIGNhY2hlIGludmFsaWRhdGlvbi4NCj4NCj4gPj4+
PiBUaGlzIGlzIGp1c3QgYSBzb2Z0d2FyZSBzb2x1dGlvbiB3aGljaCB3b3JrcyBiZWNhdXNlIG9m
IGNvaW5jaWRlbnQgYW5kDQo+ID4+Pj4gbm90IGJlY2F1c2Ugb2YgZW5naW5lZXJpbmcuDQo+ID4+
PiBCeSBtYW5kYXRpbmcgYSBzb2Z0d2FyZSBmYWxsYmFjayBmb3IgdGhlIGNhc2VzIHdoZXJlIHlv
dSB3b3VsZCBuZWVkDQo+ID4+PiBicmFja2V0ZWQgYWNjZXNzIHRvIHRoZSBkbWEtYnVmLCB5b3Ug
c2ltcGx5IHNoaWZ0IHRoZSBwcm9ibGVtIGludG8NCj4gPj4+IHVzZXJzcGFjZS4gVXNlcnNwYWNl
IHRoZW4gY3JlYXRlcyB0aGUgYnJhY2tldCBieSBmYWxsaW5nIGJhY2sgdG8gc29tZQ0KPiA+Pj4g
b3RoZXIgaW1wb3J0IG9wdGlvbiB0aGF0IG1vc3RseSBkbyBhIGNvcHkgYW5kIHRoZW4gdGhlIGFw
cHJvcHJpYXRlDQo+ID4+PiBjYWNoZSBtYWludGVuYW5jZS4NCj4gPj4+DQo+ID4+PiBXaGlsZSBJ
IHVuZGVyc3RhbmQgeW91ciBzZW50aW1lbnQgYWJvdXQgdGhlIERNQS1BUEkgZGVzaWduIGJlaW5n
DQo+ID4+PiBpbmNvbnZlbmllbnQgd2hlbiB0aGluZ3MgYXJlIGp1c3QgY29oZXJlbnQgYnkgc3lz
dGVtIGRlc2lnbiwgdGhlIERNQS0NCj4gPj4+IEFQSSBkZXNpZ24gd2Fzbid0IGRvbmUgdGhpcyB3
YXkgZHVlIHRvIGJhZCBlbmdpbmVlcmluZywgYnV0IGR1ZSB0byB0aGUNCj4gPj4+IGZhY3QgdGhh
dCBwZXJmb3JtYW50IERNQSBhY2Nlc3Mgb24gc29tZSBzeXN0ZW1zIGp1c3QgcmVxdWlyZSB0aGlz
IGtpbmQNCj4gPj4+IG9mIGJyYWNrZXRpbmcuDQo+ID4+IFdlbGwsIHRoaXMgaXMgZXhhY3RseSB3
aGF0IEknbSBjcml0aWNpemluZyBvbiB0aGUgRE1BLUFQSS4gSW5zdGVhZCBvZg0KPiA+PiBnaXZp
bmcgeW91IGEgcHJvcGVyIGVycm9yIGNvZGUgd2hlbiBzb21ldGhpbmcgd29uJ3Qgd29yayBpbiBh
IHNwZWNpZmljDQo+ID4+IHdheSBpdCBqdXN0IHRyaWVzIHRvIGhpZGUgdGhlIHJlcXVpcmVtZW50
cyBpbnNpZGUgdGhlIERNQSBsYXllci4NCj4gPj4NCj4gPj4gRm9yIGV4YW1wbGUgd2hlbiB5b3Vy
IGRldmljZSBjYW4gb25seSBhY2Nlc3MgMzJiaXRzIHRoZSBETUEtQVBJDQo+ID4+IHRyYW5zcGFy
ZW50bHkgaW5zZXJ0IGJvdW5jZSBidWZmZXJzIGluc3RlYWQgb2YgZ2l2aW5nIHlvdSBhIHByb3Bl
ciBlcnJvcg0KPiA+PiBjb2RlIHRoYXQgdGhlIG1lbW9yeSBpbiBxdWVzdGlvbiBjYW4ndCBiZSBh
Y2Nlc3NlZC4NCj4gPj4NCj4gPj4gVGhpcyBqdXN0IHRyaWVzIHRvIGhpZGUgdGhlIHVuZGVybHlp
bmcgcHJvYmxlbSBpbnN0ZWFkIG9mIHB1c2hpbmcgaXQNCj4gPj4gaW50byB0aGUgdXBwZXIgbGF5
ZXIgd2hlcmUgaXQgY2FuIGJlIGhhbmRsZWQgbXVjaCBtb3JlIGdyYWNlZnVsbHkuDQo+ID4gSG93
IHdvdWxkIHlvdSBleHBlY3QgdGhlIERNQSBBUEkgdG8gYmVoYXZlIG9uIGEgc3lzdGVtIHdoZXJl
IHRoZSBkZXZpY2UNCj4gPiBkcml2ZXIgaXMgb3BlcmF0aW5nIG9uIGNhY2hlYWJsZSBtZW1vcnks
IGJ1dCB0aGUgZGV2aWNlIGlzIG5vbi0NCj4gPiBjb2hlcmVudD8gVGVsbGluZyB0aGUgZHJpdmVy
IHRoYXQgdGhpcyBqdXN0IGRvZXNuJ3Qgd29yaz8NCj4NCj4gWWVzLCBleGFjdGx5IHRoYXQuDQo+
DQo+IEl0J3MgdGhlIGpvYiBvZiB0aGUgaGlnaGVyIGxldmVsIHRvIHByZXBhcmUgdGhlIGJ1ZmZl
ciBhIGRldmljZSB3b3JrDQo+IHdpdGgsIG5vdCB0aGUgb25lIG9mIHRoZSBsb3dlciBsZXZlbC4N
Cg0KV2hhdCBhcmUgaGlnaGVyIGFuZCBsb3dlciBsZXZlbHMgaGVyZT8NCg0KQXMgcGVyIHRoZSBl
eGlzdGluZyBkZXNpZ24gb2YgdGhlIERNQSBtYXBwaW5nIGZyYW1ld29yaywgdGhlIGZyYW1ld29y
aw0KaGFuZGxlcyB0aGUgc3lzdGVtIERNQSBhcmNoaXRlY3R1cmUgZGV0YWlscyBhbmQgRE1BIG1h
c3RlciBkcml2ZXJzDQp0YWtlIGNhcmUgb2YgaW52b2tpbmcgdGhlIHJpZ2h0IERNQSBtYXBwaW5n
IG9wZXJhdGlvbnMgYXJvdW5kIHRoZSBETUENCmFjY2Vzc2VzLiBUaGlzIG1ha2VzIHNlbnNlIHRv
IG1lLCBhcyBETUEgbWFzdGVyIGRyaXZlcnMgaGF2ZSBubyBpZGVhDQphYm91dCB0aGUgc3BlY2lm
aWMgU29DcyBvciBidXNlcyB0aGV5J3JlIHBsdWdnZWQgaW50bywgd2hpbGUgdGhlIERNQQ0KbWFw
cGluZyBmcmFtZXdvcmsgaGFzIG5vIGlkZWEgd2hlbiB0aGUgRE1BIGFjY2Vzc2VzIGFyZSB0YWtp
bmcgcGxhY2UuDQoNCj4NCj4gSW4gb3RoZXIgd29yZHMgaW4gYSBwcm9wZXIgZGVzaWduIHRoZSBo
aWdoZXIgbGV2ZWwgd291bGQgcHJlcGFyZSB0aGUNCj4gbWVtb3J5IGluIGEgd2F5IHRoZSBkZXZp
Y2UgZHJpdmVyIGNhbiB3b3JrIHdpdGggaXQsIG5vdCB0aGUgb3RoZXIgd2F5DQo+IGFyb3VuZC4N
Cj4NCj4gV2hlbiBhIGRldmljZSBkcml2ZXIgZ2V0cyBtZW1vcnkgaXQgY2FuJ3Qgd29yayB3aXRo
IHRoZSBjb3JyZWN0IHJlc3BvbnNlDQo+IGlzIHRvIHRocm93IGFuIGVycm9yIGFuZCBidWJibGUg
dGhhdCB1cCBpbnRvIGEgbGF5ZXIgd2hlcmUgaXQgY2FuIGJlDQo+IGhhbmRsZWQgZ3JhY2VmdWxs
eS4NCj4NCj4gRm9yIGV4YW1wbGUgaW5zdGVhZCBvZiB1c2luZyBib3VuY2UgYnVmZmVycyB1bmRl
ciB0aGUgaG9vZCB0aGUgRE1BIGxheWVyDQo+IHRoZSBNTSBzaG91bGQgbWFrZSBzdXJlIHRoYXQg
d2hlbiB5b3UgY2FsbCByZWFkKCkgd2l0aCBPX0RJUkVDVCB0aGF0IHRoZQ0KPiBwYWdlcyBpbiBx
dWVzdGlvbiBhcmUgYWNjZXNzaWJsZSBieSB0aGUgZGV2aWNlLg0KPg0KDQpJIHRlbmQgdG8gYWdy
ZWUgd2l0aCB5b3UgaWYgaXQncyBhYm91dCBhIGNvc3RseSBzb2Z0d2FyZSAiZW11bGF0aW9uIg0K
bGlrZSBib3VuY2UgYnVmZmVycywgYnV0IGNhY2hlIG1haW50ZW5hbmNlIGlzIGEgaGFyZHdhcmUg
ZmVhdHVyZQ0KZXhpc3RpbmcgdGhlcmUgYnkgZGVmYXVsdCBhbmQgaXQncyBvZnRlbiBtdWNoIGNo
ZWFwZXIgdG8gb3BlcmF0ZSBvbg0KY2FjaGVkIG1lbW9yeSBhbmQgc3luY2hyb25pemUgdGhlIGNh
Y2hlcyByYXRoZXIgdGhhbiBoYXZlIGV2ZXJ5dGhpbmcNCmluIHVuY2FjaGVkIChvciB3cml0ZS1j
b21iaW5lZCkgbWVtb3J5Lg0KDQo+ID4gSXQncyBhIHVzZS1jYXNlIHRoYXQgaXMgd29ya2luZyBm
aW5lIHRvZGF5IHdpdGggbWFueSBkZXZpY2VzIChlLmcuIG5ldHdvcmsNCj4gPiBhZGFwdGVycykg
aW4gdGhlIEFSTSB3b3JsZCwgZXhhY3RseSBiZWNhdXNlIHRoZSBhcmNoaXRlY3R1cmUgc3BlY2lm
aWMNCj4gPiBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgRE1BIEFQSSBpbnNlcnRzIHRoZSBjYWNoZSBt
YWludGVuYW5jZSBvcGVyYXRpb25zDQo+ID4gb24gYnVmZmVyIG93bmVyc2hpcCB0cmFuc2Zlci4N
Cj4NCj4gWWVhaCwgSSdtIHBlcmZlY3RseSBhd2FyZSBvZiB0aGF0LiBUaGUgcHJvYmxlbSBpcyB0
aGF0IGV4YWN0bHkgdGhhdA0KPiBkZXNpZ24gdG90YWxseSBicmVha3MgR1BVcyBvbiBYZW4gRE9N
MCBmb3IgZXhhbXBsZS4NCj4NCj4gQW5kIFhlbiBpcyBqdXN0IG9uZSBleGFtcGxlLCBJIGNhbiBj
ZXJ0YWlubHkgc2F5IGZyb20gZXhwZXJpZW5jZSB0aGF0DQo+IHRoaXMgZGVzaWduIHdhcyBhIHJl
YWxseSByZWFsbHkgYmFkIGlkZWEgYmVjYXVzZSBpdCBmYXZvcnMganVzdCBvbmUgdXNlDQo+IGNh
c2Ugd2hpbGUgbWFraW5nIG90aGVyIHVzZSBjYXNlcyBwcmFjdGljYWxseSBpbXBvc3NpYmxlIGlm
IG5vdCByZWFsbHkNCj4gaGFyZCB0byBpbXBsZW1lbnQuDQoNClNvcnJ5LCBJIGhhdmVuJ3Qgd29y
a2VkIHdpdGggWGVuLiBDb3VsZCB5b3UgZWxhYm9yYXRlIHdoYXQncyB0aGUNCnByb2JsZW0gdGhh
dCB0aGlzIGludHJvZHVjZXMgZm9yIGl0Pw0KDQpCZXN0IHJlZ2FyZHMsDQpUb21hc3oNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
