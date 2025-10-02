Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CB1BB3AA3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Oct 2025 12:40:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42E6544D39
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Oct 2025 10:40:01 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id 4619F448A4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Oct 2025 10:39:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=RNIfS9Pw;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.214.175 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-26808b24a00so1352195ad.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Oct 2025 03:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759401597; x=1760006397; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5zqSShRm39AvEZ2mdKxWsxXrw2ZA/BSSQMCMwPSXcG4=;
        b=RNIfS9PwX6fZa2l88rlYx0sOp45OReHceWXBxL9VU7X3S3SQvGCq+YMdD8GmL/lxjC
         Me16uPcIMsSH2dDMuLTWT2TwdrcBy1ktbLR7fY5mtDL8lieajrL7V/sRZonvIviRPkc0
         lnXx30C6EaBHepeBonaZWtrub21iZQ9UzJNRaH0f0WjHSUF856qXVGOX8lfOffpx06IC
         nCI72PDWFHAf7OHCC5UCDL6geMzNLe2ZSbZrjbpoDjfYyB7mvBK/YnR0hexqw16uKr7H
         9phE4eo1qpvn+m3fLSuC4i53YJCOrzLFudnoUB34k5IljumHiQhgKVb/NRAQ8jW+RrTP
         ay1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759401597; x=1760006397;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zqSShRm39AvEZ2mdKxWsxXrw2ZA/BSSQMCMwPSXcG4=;
        b=E0y+qkKIwufTOt39f24CRtoVVJP6c5rUF0+3xExSCPiA6BfiRbgn2nM4WjCCuX9ybq
         5STTcxH7yGyLAIBCUgd2zYy3PkrhIVx8MUrHuGfRbdHb6R2e/5LfhX5SgCy4O3WBfqZq
         9Eg1Y1Yah2wIvuSTFM3vq85hUrcZ0GVylcgNZ57AvRD9ikx88GAYOku0lOPp0IcuAsDx
         MNsGXyLQi/4Yka699BpWfS2ZxwO+uGd9/UXypA9+vuA900l5rZ7WNN1xj4SAEhm00g06
         rwAe9oW/0PLFdyiZ87WvfyK9mvDLU366VfeE1rrKMkMI0ZK1nevKPgIp1V8OusR/j2rV
         Moaw==
X-Forwarded-Encrypted: i=1; AJvYcCVu1ix7oyi9Egeix9b22ZT77sZWKmcAdvdzuApjqlT/0CXUWVk5Eghs7QVM4Zq87oapSxH6KT77mAklUUsR@lists.linaro.org
X-Gm-Message-State: AOJu0YyvV6F/ffaQwWxoQdPvUSfiNcjfM//4fakzlB/5eUTlB2UB4VLZ
	Iph56j/+Eo4AyyR81U8ro19OieCrJFAhKo3afzxwiJlDGLQ6rpsHeTFMoU9VMc7HXqnpXGKMIMn
	bgurrYXGyRSRYRKsF6mwlQT4FqNVQrJ0=
X-Gm-Gg: ASbGncuqv4d1J9k9SWJz74G8V0FE92sFrg+ApWHzixi5FIYY/DJ8At0eFOcnLhjS4LR
	XMvnBR4/hPzkSvtMERkINiMGQ6X179sUplewb1MgyzHmlFgfA8MGSAeEjd3FvoRRbAS9CCdUUII
	8HnjAA9lrPR+TiAqYqBOuON7dFDuMZE6GrpKwS/7SJ8WH5cb+4mI8oWfHRf1uOjqLoWoGCSZ1nK
	pAA4zhhyvhqf9vNUPaqp4TUmpRnIB45fA4U23XeSf8WNS8v3l15GZO7DDh9PG7CCEPtWptdAfIA
	V5s7RjhtPh6Cvs7dZGbwoBDTotOimzMNLnZNAZMxnhuQ3XOMiw==
X-Google-Smtp-Source: AGHT+IHFLND1P6O8TdHjmnKikosiXvhXOIfnx1PV0ljjYUmm/N/aJM7ueeeJ1F4XTf3eavFywQQD7J67z/yFzofBPI0=
X-Received: by 2002:a17:903:2f83:b0:24e:af92:70de with SMTP id
 d9443c01a7336-28e7f33482dmr45430085ad.7.1759401597241; Thu, 02 Oct 2025
 03:39:57 -0700 (PDT)
MIME-Version: 1.0
References: <20251002081247.51255-37-byungchul@sk.com> <tencent_13F1EDE0D6B7A44697F31AE274C8E664E908@qq.com>
In-Reply-To: <tencent_13F1EDE0D6B7A44697F31AE274C8E664E908@qq.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 2 Oct 2025 12:39:44 +0200
X-Gm-Features: AS18NWBvN_Cs7ivtqpv2OaNBhg_Klbjg_5caE3pe8g8RPQqJWvaoaACfChLj4F8
Message-ID: <CANiq72ngvZSL72GQ+CwFoaE4ZfakZSPcZk1zrXqyaKEZLWDf-g@mail.gmail.com>
To: Guangbo Cui <2407018371@qq.com>
X-Rspamd-Queue-Id: 4619F448A4
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid,qq.com:email];
	TAGGED_FROM(0.00)[];
	FREEMAIL_TO(0.00)[qq.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sk.com,oracle.com,gmail.com,kernel.org,google.com,linuxfoundation.org,lists.linaro.org,vivo.com,vger.kernel.org,arm.com,efficios.com,intel.com,suse.de,redhat.com,infradead.org,suse.com,linux-foundation.org,linaro.org,kzalloc.com,garyguo.net,protonmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.175:from];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.214.175:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VUWUO4UIMAL4WO7337XWNRSV47C2ULGT
X-Message-ID-Hash: VUWUO4UIMAL4WO7337XWNRSV47C2ULGT
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: byungchul@sk.com, Liam.Howlett@oracle.com, amir73il@gmail.com, andi.shyti@kernel.org, andrii@kernel.org, boqun.feng@gmail.com, bsegall@google.com, gregkh@linuxfoundation.org, linaro-mm-sig@lists.linaro.org, link@vivo.com, linux-kernel@vger.kernel.org, mark.rutland@arm.com, masahiroy@kernel.org, mathieu.desnoyers@efficios.com, matthew.brost@intel.com, max.byungchul.park@gmail.com, mcgrof@kernel.org, melissa.srw@gmail.com, mgorman@suse.de, mhocko@kernel.org, minchan@kernel.org, oleg@redhat.com, paulmck@kernel.org, penberg@kernel.org, peterz@infradead.org, petr.pavlu@suse.com, torvalds@linux-foundation.org, vincent.guittot@linaro.org, will@kernel.org, yeoreum.yun@arm.com, ysk@kzalloc.com, rust-for-linux@vger.kernel.org, ojeda@kernel.org, gary@garyguo.net, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, dakr@kernel.org, alex.gaynor@gmail.com, bjorn3_gh@protonmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] rust: bindings: add `rust_helper_wait_for_completion` helper function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VUWUO4UIMAL4WO7337XWNRSV47C2ULGT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBPY3QgMiwgMjAyNSBhdCAxMjoxMuKAr1BNIEd1YW5nYm8gQ3VpIDwyNDA3MDE4Mzcx
QHFxLmNvbT4gd3JvdGU6DQo+DQo+IFRoZSBERVBUIHBhdGNoIHNlcmllcyBjaGFuZ2VkIGB3YWl0
X2Zvcl9jb21wbGV0aW9uYCBpbnRvIGEgbWFjcm8uDQoNClRoYW5rcyENCg0KSW4gZ2VuZXJhbCwg
aXQgaXMgdXNlZnVsIHRvIHByb3ZpZGUgYSBMaW5rOiB0byBMb3JlIHRvIHRoZSByaWdodCBwYXRj
aA0KKGkuZS4gY29udGV4dCBpcyBnb29kKSwgYW5kIHBsZWFzZSBjbGFyaWZ5IGluIHdoaWNoIHRy
ZWUgeW91IGZvdW5kIHRoZQ0KaXNzdWUgaWYgYW55IC0tIEkgZG9uJ3Qgc2VlIGl0IGluIGxpbnV4
LW5leHQsIHNvIEkgaW1hZ2luZSBpdCBpcyBub3QNCmFwcGxpZWQsIGJ1dCAiY2hhbmdlZCIgc291
bmRzIGxpa2UgaXQgd2FzPyBJZiBpdCB3YXMgYWN0dWFsbHkgYXBwbGllZCwNCnBsZWFzZSBhbHNv
IHByb3ZpZGUgYSBGaXhlczogdGFnLg0KDQpDaGVlcnMsDQpNaWd1ZWwNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
