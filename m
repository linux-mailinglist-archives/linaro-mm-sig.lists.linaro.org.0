Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 335868D349D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 May 2024 12:31:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AF7B3F460
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 May 2024 10:31:47 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 9E9243F460
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 May 2024 10:31:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="TgsFW4F/";
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-41fef5dda72so47345e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 May 2024 03:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1716978694; x=1717583494; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8T+4C++Ip51NQNCNOm8O3oTdvMVRbk5XM6uYT3Xq7q4=;
        b=TgsFW4F/JS2DwgL2WP1dHdfsBs3T8CL8Gfw+wSCcxMdQ0/Pw4PrPndEAJifemk9Yl3
         JGwAfRG8X63niJ+DvPGBTQSB035WfhuJcY0j6rha24fGs3ignT/e5NhCgYYV2DWE7eXB
         9RZJnJu5RrWIkJQaTVFufCK9wiUP/Ru9rUQpC7VgdEqsBPESno6DzuX6pmcjzmHZQPF7
         xje0RbIf2B+5yhgfYi/KjSMNZgCcveWX34FSq8/tzy7cdNF4yGqLpUJPSERzjX5Cs+Iw
         zCc1JJ0VaTFaldLpyph2GuvgqFcBnwu+s79QQWiRFX/aJWuolBLF9bLsq3D0FBdXjgTE
         AMag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716978694; x=1717583494;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8T+4C++Ip51NQNCNOm8O3oTdvMVRbk5XM6uYT3Xq7q4=;
        b=qMkAkQut9BOMgOo8HWexiklJGcbhdMAFPWszlFBpBSlzFo0K/EOw3PhWZwGG3hm3LH
         V6/hH3UBtKWJHhXu+Zjg1GJXi0VoUvrA1PyYBQySrlQk981eeYH+kW/ZnS7pooN6P+1/
         baBdpFXecJPgEGZTPshYlWaN/dAgEem5YTtfthAH9Krs+XXx0VkdAUTfaqes/f3Ebz9Q
         aGxhAxX3m/iumNHyqlkr6NTN+sS+b6LU9RRuhS66eH62gCyYJyMqSYE6NC8sHFOgzA58
         u9Th6e8LNQCMVT85BFj5S8hn446JefH//kODOTV+UXc2WcVdQLnxXjtr1E2jnoTBdTqn
         MDTA==
X-Forwarded-Encrypted: i=1; AJvYcCWYg94ynLhU+5BM50Lskj0hdYOGtOWIm3adH2N+sKpSujIznRYLmL1uICT7G1kLPy83a9VdaZZtzr5g5I8UWs1QuaLh84soJZ8cB/KXnB0=
X-Gm-Message-State: AOJu0YwR4b1v4DpPwVH44CvxnNwYTYAdctxGJXX3QSscafJvZJWRNv+3
	pphpv6CqywR6nTBhCrKRtn42vfFrtMlFInIiQIezMrqcM+ENjJDV9cwCh7wD87IqaUzKVyz3KHr
	xAZODEPCAk9bkHMpJi/9zBUFzo8ktWuvvIiM=
X-Google-Smtp-Source: AGHT+IF06N0AywzCp/IQE6BefdLVbzE7nu58juaSZM1QzbsQ9KSqgjIx7pyF//JuzfivcCk7P8QZxUDTY6QzUp2n4Jk=
X-Received: by 2002:a05:600c:3b18:b0:41f:a15d:2228 with SMTP id
 5b1f17b1804b1-42122909a1cmr1457685e9.0.1716978694494; Wed, 29 May 2024
 03:31:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240522090158.121797-1-21cnbao@gmail.com>
In-Reply-To: <20240522090158.121797-1-21cnbao@gmail.com>
From: John Stultz <jstultz@google.com>
Date: Wed, 29 May 2024 03:31:22 -0700
Message-ID: <CANDhNCqr4MtkEXG4uBOViPAODQnuQOgpdNZCmP4yvVSNwnU5ew@mail.gmail.com>
To: Barry Song <21cnbao@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E9243F460
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.128.53:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: 7ZXFJXP4GYJW2SYZ6CMGKQA2LNN323P3
X-Message-ID-Hash: 7ZXFJXP4GYJW2SYZ6CMGKQA2LNN323P3
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, Barry Song <v-songbaohua@oppo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] dma-buf: align fd_flags and heap_flags with dma_heap_allocation_data
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7ZXFJXP4GYJW2SYZ6CMGKQA2LNN323P3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMjIsIDIwMjQgYXQgMjowMuKAr0FNIEJhcnJ5IFNvbmcgPDIxY25iYW9AZ21h
aWwuY29tPiB3cm90ZToNCj4NCj4gRnJvbTogQmFycnkgU29uZyA8di1zb25nYmFvaHVhQG9wcG8u
Y29tPg0KPg0KPiBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEgZGVmaW5lcyB0aGUgVUFQSSBhcyBm
b2xsb3dzOg0KPg0KPiAgc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YSB7DQo+ICAgICAg
ICAgIF9fdTY0IGxlbjsNCj4gICAgICAgICAgX191MzIgZmQ7DQo+ICAgICAgICAgIF9fdTMyIGZk
X2ZsYWdzOw0KPiAgICAgICAgICBfX3U2NCBoZWFwX2ZsYWdzOw0KPiAgfTsNCj4NCj4gSG93ZXZl
ciwgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKCkgY2FzdHMgdGhlbSBpbnRvIHVuc2lnbmVkIGludC4g
SXQncyB1bmNsZWFyDQo+IHdoZXRoZXIgdGhpcyBpcyBpbnRlbnRpb25hbCBvciB3aGF0IHRoZSBw
dXJwb3NlIGlzLCBidXQgaXQgY2FuIGJlIHF1aXRlDQo+IGNvbmZ1c2luZyBmb3IgdXNlcnMuDQo+
DQo+IEFkZGluZyB0byB0aGUgY29uZnVzaW9uLCBkbWFfaGVhcF9vcHMuYWxsb2NhdGUgZGVmaW5l
cyBib3RoIG9mIHRoZXNlIGFzDQo+IHVuc2lnbmVkIGxvbmcuIEZvcnR1bmF0ZWx5LCBzaW5jZSBk
bWFfaGVhcF9vcHMgaXMgbm90IHBhcnQgb2YgdGhlIFVBUEksDQo+IGl0IGlzIGxlc3Mgb2YgYSBj
b25jZXJuLg0KPg0KPiBzdHJ1Y3QgZG1hX2hlYXBfb3BzIHsNCj4gICAgICAgICBzdHJ1Y3QgZG1h
X2J1ZiAqKCphbGxvY2F0ZSkoc3RydWN0IGRtYV9oZWFwICpoZWFwLA0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIGxlbiwNCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBmZF9mbGFncywNCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBoZWFwX2ZsYWdzKTsN
Cj4gfTsNCj4NCj4gSSBhbSBzZW5kaW5nIHRoaXMgUkZDIGluIGhvcGVzIG9mIGNsYXJpZnlpbmcg
dGhlc2UgY29uZnVzaW9ucy4NCj4NCj4gSWYgdGhlIGdvYWwgaXMgdG8gY29uc3RyYWluIGJvdGgg
ZmxhZ3MgdG8gMzIgYml0cyB3aGlsZSBlbnN1cmluZyB0aGUgc3RydWN0DQo+IGlzIGFsaWduZWQg
dG8gNjQgYml0cywgaXQgd291bGQgaGF2ZSBiZWVuIG1vcmUgc3VpdGFibGUgdG8gZGVmaW5lDQo+
IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YSBhY2NvcmRpbmdseSBmcm9tIHRoZSBiZWdpbm5pbmcs
IGxpa2Ugc286DQo+DQo+ICBzdHJ1Y3QgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRhIHsNCj4gICAg
ICAgICAgX191NjQgbGVuOw0KPiAgICAgICAgICBfX3UzMiBmZDsNCj4gICAgICAgICAgX191MzIg
ZmRfZmxhZ3M7DQo+ICAgICAgICAgIF9fdTMyIGhlYXBfZmxhZ3M7DQo+ICAgICAgICAgIF9fdTMy
IHBhZGRpbmc7DQo+ICB9Ow0KDQpTbyBoZXJlLCBpZiBJIHJlY2FsbCwgdGhlIGludGVudCB3YXMg
dG8ga2VlcCA2NGJpdHMgZm9yIHBvdGVudGlhbA0KZnV0dXJlIGhlYXBfZmxhZ3MuDQoNCkJ1dCB5
b3VyIHBvaW50IGFib3ZlIHRoYXQgd2UncmUgaW5jb25zaXN0ZW50IHdpdGggdHlwZXMgaW4gdGhl
IG5vbg0KVUFQSSBhcmd1bWVudHMgaXMgdmFsaWQuDQpTbyBJIHRoaW5rIHlvdXIgcGF0Y2ggbWFr
ZXMgc2Vuc2UuDQoNClRoYW5rcyBmb3IgcmFpc2luZyB0aGlzIGlzc3VlIQ0KQWNrZWQtYnk6IEpv
aG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
