Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A646D7B10
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 13:20:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF8D83F704
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 11:20:09 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by lists.linaro.org (Postfix) with ESMTPS id 4E5CB3EC71
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 11:19:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=UMTYBNcP;
	spf=pass (lists.linaro.org: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.128.182 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5456249756bso670177587b3.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 04:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680693599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OVTqfRf2jpWEeoD6UNL26R0hpOD3j9XRAva3jj9aVBk=;
        b=UMTYBNcPhbAF0ABt8KophwzX/Ny6OPNn+L6EnmU5IkTiR+fwtjtTvvmlWyMYj3Pkd/
         c/AorgHXggjcy/x5fLftLDXcSRee6X3AtQ1pW2rCBk6CYlNeeb39l9Sc0PgP3d01I3hi
         qodJYbUqCHZ235SHXXOkTEXGGEHXyT2WxYP95YphXmCso64A4JEn5pUvLQzjn8+qM2mo
         ffZ5LUVWgPBrcIjs91pPf+lKHjgH0EcvEuCyvhchd69BLf5uIsTKD4aB1cF0OsfHG7q9
         zt9q5kpD8Hxo6x9MnvBm6HE/Ec1pZ6n+yeI3K4SLL9P/DBFTyptpplVjTZnPhcQNN5G2
         eRLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680693599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OVTqfRf2jpWEeoD6UNL26R0hpOD3j9XRAva3jj9aVBk=;
        b=hSLPp3Pz/V2AbphJigiO0GuiuY5JY8+C4WCIBK1Whuozq/h30WIbuKA7qH/qq/hSDJ
         oY6iHCOm2NMlGQlNPGQmQt2rVRWWnNn60mEelaecTHr0csDHOl8WrSi2P5kjc8hNllGb
         D1GBy8SMsBJWalOA/jpSrqYbceAo5xUT0SK5Fmqa562oVYQMPRnxhucsf+EIop0rkJmO
         iCL/sW5Bn0DRS9xFQaonhrB/RfgeRXn9qznamW0b6OyPrPqN6m3pMdJZuSd4i2OXyuXg
         ZftFAMNFp28sHAETwjhpcqhXQPy0rrJjmyKExNf5Fh2Yis+eyQUpcblTSmpIA2E8AEU0
         rMTg==
X-Gm-Message-State: AAQBX9dZmwu+Nl/htJfx3LDmj2z33VGQ6mtPTCSAckkR6wyJzcPBI+z8
	9k1sGnS87cC5r4bjZVtOKCOJgE4m2G1/z+7/Mn0=
X-Google-Smtp-Source: AKy350bbnQi/kk0Ucraeyifb8HGzxmDoYIzCbR5PfgN3LBUwsGHhS/jbvYqgxE1Tugt8wPoVLCb1KVJOEW5vVrBJUTs=
X-Received: by 2002:a81:c509:0:b0:52e:e095:d840 with SMTP id
 k9-20020a81c509000000b0052ee095d840mr3519608ywi.0.1680693598783; Wed, 05 Apr
 2023 04:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-4-917ff5bc80a8@asahilina.net> <ZC1WwJDr1iqSQnYs@phenom.ffwll.local>
In-Reply-To: <ZC1WwJDr1iqSQnYs@phenom.ffwll.local>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 Apr 2023 13:19:47 +0200
Message-ID: <CANiq72=h9qKrpkY2K962__rs-JLsmWxPXocx040ZeDSKGf_Brw@mail.gmail.com>
To: Asahi Lina <lina@asahilina.net>,
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
X-Rspamd-Queue-Id: 4E5CB3EC71
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.43 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.93)[99.68%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.182:from];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: P5P7K5OFA7SS4JJ44GFB6TZROFLPNJKQ
X-Message-ID-Hash: P5P7K5OFA7SS4JJ44GFB6TZROFLPNJKQ
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 04/18] rust: drm: gem: Add GEM object abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P5P7K5OFA7SS4JJ44GFB6TZROFLPNJKQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgNSwgMjAyMyBhdCAxOjA44oCvUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToNCj4NCj4gVWggYWxsIHRoZSBydXN0IGhlbHBlciB3cmFwcGVycyBmb3Ig
YWxsIHRoZSBrZXJuZWwgaW4gYSBzaW5nbGUgZmlsZSBkb2VzDQo+IG5vdCBzb3VuZCBnb29kLiBD
YW4gd2Ugbm90IHNwbGl0IHRoZXNlIHVwIGludG8gZWFjaCBzdWJzeXN0ZW0sIGFuZCB0aGVuDQo+
IG1heWJlIGluc3RlYWQgb2Ygc3ByaW5rbGluZyAjaWZkZWYgYWxsIG92ZXIgYSAuYyBmaWxlIE1h
a2UgdGhlIGNvbXBpbGF0aW9uDQo+IG9mIHRoYXQgZmlsZSBjb25kaXRpb25hbCBvbiBydXN0IHN1
cHBvcnQgKHBsdXMgd2hhdGV2ZXIgb3RoZXIgS2NvbmZpZyBnYXRlDQo+IHRoZSBvdGhlciBjIGZp
bGVzIGhhcyBhbHJlYWR5KT8NCg0KSW5kZWVkLCB0aGUgcGxhbiBpcyBzcGxpdHRpbmcgdGhlIGBr
ZXJuZWxgIGNyYXRlIGFuZCBnaXZpbmcgZWFjaA0Kc3Vic3lzdGVtIGl0cyBvd24gY3JhdGUsIGJp
bmRpbmdzLCBoZWxwZXJzLCBldGMuDQoNCkNoZWVycywNCk1pZ3VlbA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
