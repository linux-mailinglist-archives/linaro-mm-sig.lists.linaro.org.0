Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2C66D7CAD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 14:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 724413EF7C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 12:32:34 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by lists.linaro.org (Postfix) with ESMTPS id 088163EE30
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 12:32:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=MkV5dExL;
	spf=pass (lists.linaro.org: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.219.172 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yb1-f172.google.com with SMTP id i6so42321643ybu.8
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 05:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680697943;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQcMbra2CgBD1rOvxGpRVnkzaGjn0KHujzI1BY777uY=;
        b=MkV5dExLiNqHfiYmWMuvch56083VrvbatouYUkL58SSm+WrMUvsdZSE3XxB3d8jeJf
         EK33MHkqG3MELcpSeqXzpH2whK3o8Lmx0GixFiv1YWYv+7tRaeIgngnfWuJ/dlYntL3q
         5EMAWmxeenJFRgI1bH3bR+6XbKuOpqI4Hockj/fOTVKrWkTCss31mmnSsukYKg1k+IqN
         OkLaehmee/JjhR7r8W8jnPHDsXhFzcqjzFr6Z2qWPssKR8xHf9IYTgj2dDtB5ES4viLg
         7lFMhaiKVbLFTNAbOFF+3ByTplR68WQgItjc+07KNEyaqeeqNZwZ4frv2WtLxz60hAz8
         3V2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680697943;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SQcMbra2CgBD1rOvxGpRVnkzaGjn0KHujzI1BY777uY=;
        b=lTyAUvO6odHYL8AkAAcO3c74yPcR0irJaBFCZnFgdXtkUJc+R/S3uySICoZKkLJiHC
         ts61hB85UCk0R1tJMFGBxwRcF7iLU/va1HUDvCxe9p8BDsjeDFf/WaJvdvT50lnzZrfe
         FhqBDUEIB3SIUFSQKNsBQSPIdJFrrrVmU3LppFmrPapzYYH6JQkYnIBKPUBkEyyt8CcQ
         9dHRIE6wpmv8JbmK9GugEiPD9rC5z+R81G8LW8e0KtKihF7Ru9MpIR08wSSIh4+TUJAU
         +pizlcQujMQUWC3QpM44ETGUothBWWGO7sU9CTkv5MQ6CmvibrorEfS1lVjftmJGPsvM
         9PTw==
X-Gm-Message-State: AAQBX9e5wdNIR2aJaqZHY5xQIuLHGbqRr9okXp7fHnUacsCPbUtHdEQ2
	2QUYfCKJiJb4sVnSPNIkpVXrkJW8xbf6lX9NTfg=
X-Google-Smtp-Source: AKy350aMnNZlfVQMcWZwmVtFWd+CgIw1TUjVeCFV7ElU/MTu09D8SpK7RVipDHvOLoDOmHM2e3Wga5qC1FlXouLi1XY=
X-Received: by 2002:a25:774d:0:b0:b80:2bf9:2f78 with SMTP id
 s74-20020a25774d000000b00b802bf92f78mr4111595ybc.11.1680697943516; Wed, 05
 Apr 2023 05:32:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-4-917ff5bc80a8@asahilina.net> <ZC1WwJDr1iqSQnYs@phenom.ffwll.local>
 <CANiq72=h9qKrpkY2K962__rs-JLsmWxPXocx040ZeDSKGf_Brw@mail.gmail.com> <ZC1aEZpgZLkq8xTv@phenom.ffwll.local>
In-Reply-To: <ZC1aEZpgZLkq8xTv@phenom.ffwll.local>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 Apr 2023 14:32:12 +0200
Message-ID: <CANiq72=hoVw566orbDYcJyw2+SFfxpR1rdJVbbR3kkrjJUASww@mail.gmail.com>
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
X-Rspamd-Queue-Id: 088163EE30
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail-yb1-f172.google.com:helo,mail-yb1-f172.google.com:rdns,ffwll.ch:email,rust-for-linux.com:url];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:email,mail-yb1-f172.google.com:helo,mail-yb1-f172.google.com:rdns,rust-for-linux.com:url];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.172:from];
	FREEMAIL_TO(0.00)[gmail.com,asahilina.net,linux.intel.com,kernel.org,suse.de,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: ZQIKCLJ2CKYQY75W6VQMOBCAY24IYRWT
X-Message-ID-Hash: ZQIKCLJ2CKYQY75W6VQMOBCAY24IYRWT
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 04/18] rust: drm: gem: Add GEM object abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQIKCLJ2CKYQY75W6VQMOBCAY24IYRWT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgNSwgMjAyMyBhdCAxOjIz4oCvUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToNCj4NCj4gT2sgaWYgdGhpcyBpcyBqdXN0IGludGVyaW0gSSB0aGluayBp
dCdzIGZpbmUuIFdvdWxkIHN0aWxsIGJlIGdvb2QgdG8gaGF2ZQ0KPiB0aGUgTUFJTlRBSU5FUlMg
ZW50cnkgdGhvdWdoIGV2ZW4ganVzdCB0byBjb3ZlciB0aGUgaW50ZXJpbSBzdGF0ZS4gTGVhc3QN
Cj4gYmVjYXVzZSBJJ20gYXNzdW1pbmcgdGhhdCB3aGVuIHRoaW5ncyBhcmUgc3BsaXQgdXAgeW91
J2Qgc3RpbGwgd2FudCB0bw0KPiBrZWVwIHRoZSBydXN0IGxpc3Qgb24gY2MgZm9yIHRoZSBydXN0
IHBhcnRzLCBldmVuIHdoZW4gdGhleSBtb3ZlIGludG8NCj4gc3Vic3lzdGVtcz8NCg0KU29ycnks
IEkgbWlzc2VkIHRvIHJlcGx5IHRoZSBzZWNvbmQgcGFydCBvZiB5b3VyIGVtYWlsIC0tIHJlcGx5
aW5nIGhlcmUuDQoNCkN1cnJlbnRseSwgdGhlIHN1YnN5c3RlbSdzIGNvZGUgaXMgdW5kZXIgYHJ1
c3QvYCAodGhvdWdoIG1vZHVsZXMgY2FuDQpnbyBhbHJlYWR5IGludG8gb3RoZXIgZm9sZGVycyku
IE9uZSBvZiB0aGUgcmVhc29ucyB3YXMgdGVjaG5pY2FsDQpzaW1wbGljaXR5LCBhbmQgYSBuaWNl
IHNpZGUgZWZmZWN0IGlzIHRoYXQgd2UgY291bGQgYm9vdHN0cmFwIHRoaW5ncw0Kd2hpbGUgZ2V0
dGluZyBDIG1haW50YWluZXJzIGludm9sdmVkIG92ZXIgdGltZS4NCg0KVG8gYWNjb21wbGlzaCB0
aGF0LCB0aGUgZ3VpZGVsaW5lcyBmb3IgY29udHJpYnV0aW5nIFJ1c3QgY29kZSBhcmUgdGhhdA0K
dGhlIHJlc3BlY3RpdmUgbWFpbnRhaW5lcnMgbmVlZCB0byBiZSBhdCBsZWFzdCBDYydkLCBldmVu
IGlmIHRoZSBmaWxlcw0KZG8gbm90IGhpdCB0aGUgYEY6YCBmaWVsZHMgZm9yIHRoZSB0aW1lIGJl
aW5nIC0tIHNlZSBbMV0uIEJ1dCwgZm9yIHVzLA0KaWRlYWxseSwgdGhlIG1haW50YWluZXJzIHdp
bGwgdGFrZSB0aGUgY2hhbmdlcyB0aHJvdWdoIHRoZWlyIHRyZWUsDQppbnN0ZWFkIG9mIGdvaW5n
IHRocm91Z2ggdGhlIFJ1c3Qgb25lLCBzaW5jZSB0aGF0IGlzIHRoZSBlbmQgZ29hbC4NCg0KQW5k
LCBvZiBjb3Vyc2UsIGlmIHlvdSBhbHJlYWR5IHdhbnQgdG8gaGF2ZSBgRjpgIGZpZWxkcyBmb3Ig
dGhlIFJ1c3QNCmNvZGUsIHRoYXQgaXMgZXZlbiBiZXR0ZXIhIChXaGV0aGVyIHRob3NlIHNob3Vs
ZCBiZSBpbiB0aGUgc2FtZSBlbnRyeQ0Kb3IgaW4gYSBuZXcgb25lLCBpdCBpcyB1cCB0byB5b3Us
IG9mIGNvdXJzZSwgYW5kIHdoZXRoZXIgaXQgaXMgYQ0KZGlmZmVyZW50IHNldCBvZiBwZW9wbGUg
LyBsZXZlbCBvZiBzdXBwb3J0IC8gZXRjLikNCg0KVGhlbiwgd2hlbiB0aGUgYGtlcm5lbGAgY3Jh
dGUgc3BsaXQgaGFwcGVucywgd2UgY2FuIG1vdmUgdGhlIGNvZGUNCmRpcmVjdGx5IHVuZGVyIHdo
YXRldmVyIGZvbGRlcnMgaXQgc2hvdWxkIGJlIG5hdHVyYWxseSwgd2hlbiB0aGVpcg0KbWFpbnRh
aW5lcnMgYXJlIHJlYWR5LiBGb3Igc29tZSBzdWJzeXN0ZW1zLCB0aGF0IG1heSBtZWFuIHRoZXkg
ZG8gbm90DQpuZWVkIGFueSBgRjpgIGZpZWxkcyBzaW5jZSB0aGV5IGFyZSBhbHJlYWR5IGNvdmVy
ZWQgKGUuZy4gaWYgdGhleSBkaWQNCm5vdCBjcmVhdGUgYSBuZXcgZW50cnkgZm9yIFJ1c3QgY29k
ZSBvbmx5KS4gQW5kIGZvciBjYXNlcyBsaWtlIHlvdXJzLA0Kd2hlcmUgeW91IGFscmVhZHkgaGFk
IGBGOmAgZmllbGRzLCBpdCBtZWFucyB0aGUgbW92ZSBvZiB0aGUgZmlsZXMgY2FuDQpiZSBkb25l
IHJpZ2h0IGF3YXkgYXMgc29vbiBhcyB0aGUgc3BsaXQgaGFwcGVucy4NCg0KSW4gc2hvcnQsIHdl
IHdvdWxkIGRlZmluaXRlbHkgd2VsY29tZSBpZiB5b3UgYWRkIGBGOmAgZmllbGRzIGFscmVhZHkN
Cih3aGV0aGVyIGluIGV4aXN0aW5nIG9yIG5ldyBlbnRyaWVzKSAtLSBpdCB3b3VsZCBtZWFuIHlv
dSBhcmUgYWhlYWQgb2YNCnRoZSBjdXJ2ZSEgOikNCg0KQXMgZm9yIHRoZSBtYWlsaW5nIGxpc3Qs
IHllcywgZm9yIHRoZSB0aW1lIGJlaW5nLCBJIGFzayB0aGF0IGFsbA0KY2hhbmdlcyB0byBwbGVh
c2UgYmUgc2VudCB0byB0aGUgUnVzdCBsaXN0LCBzbyB0aGF0IGV2ZXJ5Ym9keSB0aGF0DQp3YW50
cyB0byBmb2xsb3cgdGhlIFJ1c3QgcHJvZ3Jlc3MgaGFzIGV2ZXJ5dGhpbmcgaW4gYSBzaW5nbGUg
cGxhY2UsIHNvDQp0aGF0IHdlIHRyeSB0byByZW1haW4gY29uc2lzdGVudCBpbiB0aGUgYmVnaW5u
aW5nIG9uIGUuZy4gY29kaW5nDQpndWlkZWxpbmVzLCBzbyB0aGF0IFJ1c3QgcmV2aWV3ZXJzIGNh
biBoZWxwIHNwb3QgbWlzdGFrZXMsIGFuZCBzbyBvbg0KYW5kIHNvIGZvcnRoLg0KDQpCdXQsIGFz
IFJ1c3QgZ3Jvd3MgaW4gdGhlIGtlcm5lbCwgYXMgc3lzdGVtcyBiZWNvbWUgbm9uLWV4cGVyaW1l
bnRhbCwNCmFuZCBhcyBtYWludGFpbmVycyB0YWtlIG93bmVyc2hpcCBvZiB0aGUgY29kZSwgdGhh
dCBzaG91bGQgZXZlbnR1YWxseQ0KZ28gYXdheSBhbmQgbGV0IHRoaW5ncyBiZSBhcyB1c3VhbCB3
aXRoIEMgY29kZS4gVGhlbiB0aGUgUnVzdA0Kc3Vic3lzdGVtIChhbmQgaXRzIGxpc3QpIHdpbGwg
YmVjb21lIHNtYWxsZXIsIGFuZCBpdCB3aWxsIGJlIHRoZQ0Kc3Vic3lzdGVtIChhbmQgdGhlIGRp
c2N1c3Npb24gcGxhY2UpIGZvciBhbnl0aGluZyBub3QgY292ZXJlZCBieSBvdGhlcg0Kc3Vic3lz
dGVtcywgc3VjaCBhcyBjb3JlIFJ1c3QgYWJzdHJhY3Rpb25zIGFuZCB0eXBlcywgUnVzdA0KaW5m
cmFzdHJ1Y3R1cmUgYW5kIHNvIG9uLg0KDQpIb3cgZG9lcyB0aGF0IHNvdW5kPw0KDQpbMV0gaHR0
cHM6Ly9ydXN0LWZvci1saW51eC5jb20vY29udHJpYnV0aW5nI3RoZS1ydXN0LXN1YnN5c3RlbSAo
SSBtYXkNCnJlb3JnYW5pemUgdGhpcyB0byBiZSBSdXN0J3MgYFA6YCBmaWVsZCwgYnkgdGhlIHdh
eSkNCg0KQ2hlZXJzLA0KTWlndWVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
