Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BD76D9E64
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Apr 2023 19:19:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9050C3F95F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Apr 2023 17:19:47 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by lists.linaro.org (Postfix) with ESMTPS id 8A01F3F95F
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Apr 2023 17:19:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=hynWLQyH;
	spf=pass (lists.linaro.org: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.128.177 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-54c17fa9ae8so31558147b3.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Apr 2023 10:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680801573; x=1683393573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zs6V4xSX9ZlfsxZNTadcJVx+Wo1UCjoit8XXqPB91Bs=;
        b=hynWLQyHnbgidmV91dL/pTn/bQ6Fvwdl16G4bV7a0cfNjLvqbo7ZJezWtT71601dZj
         vyA53QTaqOyxJna1YPWAZZEarfelzHGrcBwBimALxU7yhWeWk2u2q2xxUwbzmAYpGGK6
         Y7i6BYF3GFekGu174zZNzsSmnCBetspFUWvpNWr/Ek6eEcl2orfm5riHIUZvohNa2NoT
         THQ115gs41K86a86xhzjbrzfSumTJSSyT9oie6SH1KzNCEs2IgJqB2q9tj4cAvVE7IIp
         jujKfsP6+1HzIQ6+/CMRmw7bh3ZuHnygqXkvlaIM0YxkRlYY1rMhipDTo33w14rQtZ70
         /DYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680801573; x=1683393573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zs6V4xSX9ZlfsxZNTadcJVx+Wo1UCjoit8XXqPB91Bs=;
        b=1M2cZ/cR2drNOucFQFiyD4+ar3IrDywD1o2QhKvLfWkkECXFWpvdXh+kURL6p7ndG2
         v4xDvhxKUKCSyeb0ehosPLJWpN5ckfM56z21n1UriGnuR8id5LS1l2/WOeIMvFyJDcee
         q/5oaBTymAY/anTdawhT7DhSPVN6nWbVO8fl6KFq/rNR+6C3aHZnAsYprRHDoRrlQpmL
         zKhQ3ZWYzCe7wjhpsgpaGR0lQJNY4QLT3MdQ/obkQiqHbiTNH5TyyaZQ6iXd40WwtpQT
         graTufm3T8v9wNNcpCE6TSmPtSpZxqzPPRlFnD+pNdabQ2cvuwTcOF80a4P2WLpubuvL
         ZaXw==
X-Gm-Message-State: AAQBX9dltF+YDdBgVwu2s0PmlrilyK+PIVVdhHHnsVehXlKUDz6WhiXT
	CIioJGusHG1p0L938W70d5Na3XE09soF3eCVWNM=
X-Google-Smtp-Source: AKy350a/mqrWTiqYdMMX1Vw+SbgVv8dxMUMkHCqZprPzSXoQ/vKHSQZbDVIf1wpejJDyAA0MT4Wjf5VqY2/qxGwAVQw=
X-Received: by 2002:a81:c642:0:b0:546:63a:6e23 with SMTP id
 q2-20020a81c642000000b00546063a6e23mr6185709ywj.0.1680801572930; Thu, 06 Apr
 2023 10:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-7-917ff5bc80a8@asahilina.net> <ZC7T92F7K9XTZPZ1@phenom.ffwll.local>
 <CANiq72=E2k7+_cwYw_EjVezk0mWCRqbH4MUjsEmxWgJMh=3AEQ@mail.gmail.com> <ZC7pHlLFutMWJF1s@phenom.ffwll.local>
In-Reply-To: <ZC7pHlLFutMWJF1s@phenom.ffwll.local>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 6 Apr 2023 19:19:21 +0200
Message-ID: <CANiq72=JOtZ7cc+FDxUY+HUEccRjXp=3gjbM04kwBiFR=Ew2-g@mail.gmail.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org,
	asahi@lists.linux.dev
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8A01F3F95F
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.177:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,asahilina.net,linux.intel.com,kernel.org,suse.de,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 24MKZ6V33JTOQI5I7LKVYGOTX5DAYSF5
X-Message-ID-Hash: 24MKZ6V33JTOQI5I7LKVYGOTX5DAYSF5
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 07/18] rust: drm: mm: Add DRM MM Range Allocator abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/24MKZ6V33JTOQI5I7LKVYGOTX5DAYSF5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgNiwgMjAyMyBhdCA1OjQ14oCvUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToNCj4NCj4gWWVhaCB0aGlzIGFsbCBsb29rcyBncmVhdCBhbmQgdmVyeSBo
eXBlcmxpbmtlZC4NCj4NCj4gSSB0aGluayB0aGUgb25seSBuaXQgSSBoYXZlIGlzIHRoYXQgZm9y
IHR5cGVzIHdpdGggdHdvIG9yIG1vcmUgdHlwZQ0KPiB2YXJpYWJsZXMgKGxpa2UgdGhlIHJidHJl
ZSkgd2hhdCBlYWNoIG9mIHRoZW0gc2hvdWxkIHJlcHJlc2VudCBpbiB0aGUgdG9wDQo+IGludHJv
LiBJIGNhbiBndWVzcyBpdCdzIDxLZXksIFZhbHVlPiBhbmQgbm90IHRoZSBvdGhlciB3YXkgcm91
bmQsIGJ1dA0KPiBjb25maXJtYXRpb24gdGFrZXMgcXVpdGUgYSBiaXQgb2Ygc2Nyb2xsaW5nIHRv
IGNoZWNrIHdpdGggdGhlIGZ1bmN0aW9uDQo+IHR5cGVzLg0KDQpZZWFoLCB0aGF0IGlzIGZhaXIu
IFBlcnNvbmFsbHkgSSBwcmVmZXIgbW9yZSBkZXNjcmlwdGl2ZSBuYW1lcyB3aGVuDQp0aGVyZSBh
cmUgc2V2ZXJhbCBvciB0aGV5IGhhdmUgYSBzcGVjaWFsL2FzeW1tZXRyaWMgcm9sZS4NCg0KPiBP
dGhlcndpc2UgSSB0aGluayBwZXJmZWN0IGFwaSBkb2NzLg0KDQpHbGFkIHlvdSBsaWtlIGl0IQ0K
DQo+IEp1c3QgYSBxdWljayBjb21tZW50IG9uIHRoaXMsIHRoYXQncyB0aGUgc2FtZSB3ZSBkbyBv
biB0aGUgQyBzaWRlLiBNb3N0DQo+IG92ZXJ2aWV3IGNoYXB0ZXJzIGFyZSBhY3R1YWxseSBET0M6
IHNlY3Rpb25zIHB1bGxlZCBpbiBmcm9tIHRoZSBjb2RlLg0KPg0KPiBXaGF0IEkgbWVhbnQgaGVy
ZSBpcyB0aGF0IGZvciBiaWcgb3ZlcnZpZXcgc3R1ZmYgKGxpa2UgZm9yIG1vZGVzZXR0aW5nIGhv
dw0KPiB0aGUgZGlzcGxheSBwaXBlIHN0cnVjdHVyZXMgdGllIHRvZ2V0aGVyIGFzIGFuIGV4YW1w
bGU6DQo+IGh0dHBzOi8vZHJpLmZyZWVkZXNrdG9wLm9yZy9kb2NzL2RybS9ncHUvZHJtLWttcy5o
dG1sI292ZXJ2aWV3KQ0KPiBpdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gZHVwbGljYXRlIHRoYXQg
aW4gcnVzdGRvYyBvbmNlIG1vcmUuDQoNClllYWgsIGRlZmluaXRlbHksIGlmIGl0IGlzIGFscmVh
ZHkgc29tZXdoZXJlIGVsc2UgZm9yIEMsIHdlIHNob3VsZG4ndA0KZHVwbGljYXRlIGl0ICh0aGF0
IGlzIHdoYXQgSSBtZWFudCBieSB0aGUgInNoYXJlZCBhY3Jvc3MgQyBhbmQgUnVzdCINCmV4Y2Vw
dGlvbikuDQoNCj4gTWF5YmUgZHJtIGlzIHRoZSBleGNlcHRpb24sIGJ1dCBpZiB5b3UgbG9vayBh
dCBvdXIgLnJzdCBmaWxlcyB3ZSBhbHNvIGhhdmUNCj4gbW9zdCBvZiBvdXIgZG9jcyBpbiB0aGUg
Y29kZToNCj4NCj4gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtL3RyZWUvRG9j
dW1lbnRhdGlvbi9ncHUvZHJtLWttcy1oZWxwZXJzLnJzdA0KPg0KPiBUaGUgcnN0IGZpbGVzIGp1
c3QgcHJvdmlkZSB0aGUgc2NhZmZvbGRpbmcgYmVjYXVzZSBDIGRvc24ndCBoYXZlDQo+IGNyYXRl
cy9tb2R1bGVzIGhpZXJhcmNoeSB0aGF0IHdvdWxkIGRvIHRoaXMgZm9yIHlvdSBhdXRvbWF0aWNh
bGx5Lg0KDQpTb3JyeSwgSSB3YXMgdGFsa2luZyBpbiBnZW5lcmFsIGluIHRoZSBrZXJuZWwuIFRo
YXQNCmBkcm0ta21zLWhlbHBlcnMucnN0YCBsb29rcyBncmVhdC4NCg0KRnJvbSBhIHF1aWNrIGdy
ZXAsIEkgdGhpbmsgeW91IGFyZSBpbmRlZWQgb25lIG9mIHRoZSBiaWcgdXNlcnMgb2YNCmBET0M6
IGAsIHdoaWNoIGluZGVlZCBtYXAgY2xvc2VseSB0byB3aGF0IHlvdSB3b3VsZCBkbyBpbiBSdXN0
IHdpdGhvdXQNCnRoZSBzY2FmZm9sZGluZyBuZWVkLg0KDQpTbyBJIHRoaW5rIHlvdSB3aWxsIGxp
a2Ugd3JpdGluZyBkb2NzIGluIFJ1c3QgOikNCg0KQ2hlZXJzLA0KTWlndWVsDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
