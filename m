Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBXFCdeH72mCCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2C8475C74
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1DED3F727
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:59:17 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by lists.linaro.org (Postfix) with ESMTPS id E9D7140507
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 05:48:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Jd8CHui0;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.216.51 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-358e3cc5e7eso4434942a91.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 22:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777009732; x=1777614532; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/jOMf9sHPOP+Fk6bUCc/tdd0deN6bifNBcXjhksEyrM=;
        b=Jd8CHui0UKUIRCaCQ2L9alyKwR5MlrsXXvWETjBOcqxDCWGeRqWfrhmHPFaA7LEter
         n177yTK5fAnuDiuGxLUQjLRG9ppGAGaLiy9yo1lCxcEZLYcBYNRtWdY73lDM52DhHIYO
         bmMJMzkaWLQ5d4L/6z7Bs2c71Zu2sBFmKCTl+4UHw8YX5Ahq3dAoUVXoZWIkGNHbhGv7
         //e0Hyq96Moc7mKloXVJcqKzcsOs1Og9nPvY3mm8xScV3pOp+skAnWsISOizRcLrZuyL
         VDzZ2Y0Oe269BAJrLu541UCJGKh3Iwr9smQ2mr/OZBYdAv6Ruq8UBfOeWo9RZdjtL4i9
         3HlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777009732; x=1777614532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/jOMf9sHPOP+Fk6bUCc/tdd0deN6bifNBcXjhksEyrM=;
        b=k9HVaeah7gK517JQEu/DeHwuapn+E/ggT898nJuxgoxljmOMnAGcXg35b99xzSGEEF
         8wo3K44GjeezZpeBg7jJBMf/CSs2Bxird0IYWkHUKVs2QxDJK25CM6L/cxhG0pXAOQSG
         NhgUaKSl2wgNfnqzsdKER1CGiYAyjD6RsTLIHqU9nU9tv2OR36mQionYPP0m4CcAEyvS
         84flP0CHZg6tKek58WBLeZuIKYiEgMKMrVEkNtbJKX3X/dcoe0kG/TukWSFv6yqPMEgq
         QPgTWEdsAuiPM+hYDABc2ZT6yUkAR5VsUFcG30WaMdpJ/yxbg3h0Lx/9cl0b2eGzFdm3
         fFsA==
X-Forwarded-Encrypted: i=1; AFNElJ+6Jk7PQsrbwGEQJaeVN7Z8IfpSY0108QqgHdu3uhF3lo2eQatWrXY6FV8lLeQq7r7n8A2bm4SuY1qQ6lJD@lists.linaro.org
X-Gm-Message-State: AOJu0YyA3x805HA5pEswRwx1Yctgdsp+vAoL1/e6RDkFzvdEhCWo/oIb
	lLTL+lQfWhgZp+lOEfjiycHXu03i4SCrsICQobDduoTVjxDwGAvWyIfZ
X-Gm-Gg: AeBDieuciBxWukAwjju6uZSEisQGBsUBSw2LLWbgn33ZCk16kcdABufZVgpR1B+68sg
	deBSk0ntBxMcuSrtkYzoAp1JOOhxbPQaavo48RxnlMoBEMXw7SeVbXhJr/lcdO6sWtNGihmfFOi
	0v6j2C6CKSESzFwR1Ngt6fHvpE2J2FbPZyucvNR9hRVGmo+B2YLjwziMcx6Pqn62sn1y0lLufNV
	enWDgMneEbRrB7GWKPSrZTSYABdvhYXnkxXjQ2ajwVAkt7dfwTR6n+OKokvmNBVPCWYWLFHifQx
	508Rb/T/QmknZ0RfDTeT381mEQ0tdOpV9rqRu4bEW7j76H9sY677jfc+8lmqBYMTsEeXYyE3y7m
	o0bYbr3QogT5RJ3upum2/hEAy/kUjq6D3BZhq0FH+AptI1Y/FfOqPCQiyHAFUPg2enRLZaX8hUf
	1nyHdhveSEvTne6a+IWGFmYF/Wx1A24UbP8DBnu5epuMooziD5c39Lu1Hp+bJ0e0dYeCxYmruFZ
	KJEKpynBg0kct8=
X-Received: by 2002:a17:90b:5185:b0:35c:29ba:bf92 with SMTP id 98e67ed59e1d1-361403d5988mr33141482a91.5.1777009732009;
        Thu, 23 Apr 2026 22:48:52 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.bl1-in.ibm.com ([129.41.58.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa176e9sm208778245ad.20.2026.04.23.22.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 22:48:51 -0700 (PDT)
From: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>
To: maddy@linux.ibm.com,
	mpe@ellerman.id.au,
	npiggin@gmail.com,
	chleroy@kernel.org,
	peterz@infradead.org,
	jpoimboe@kernel.org,
	jbaron@akamai.com,
	aliceryhl@google.com,
	rostedt@goodmis.org,
	ardb@kernel.org,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	ojeda@kernel.org,
	boqun@kernel.org,
	gary@garyguo.net,
	bjorn3_gh@protonmail.com,
	lossin@kernel.org,
	a.hindborg@kernel.org,
	tmgross@umich.edu,
	dakr@kernel.org,
	nathan@kernel.org,
	nick.desaulniers+lkml@gmail.com,
	morbo@google.com,
	justinstitt@google.com,
	tamird@kernel.org,
	arnd@arndb.de,
	nsc@kernel.org,
	mkchauras@gmail.com,
	simona.vetter@ffwll.ch,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	rust-for-linux@vger.kernel.org,
	llvm@lists.linux.dev
Date: Fri, 24 Apr 2026 11:17:40 +0530
Message-ID: <20260424054742.45832-6-mkchauras@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260424054742.45832-1-mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YJIXM4VGDONDDNXRWMQBBGGVV5TKCOU7
X-Message-ID-Hash: YJIXM4VGDONDDNXRWMQBBGGVV5TKCOU7
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:58:45 +0000
CC: Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YJIXM4VGDONDDNXRWMQBBGGVV5TKCOU7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: CF2C8475C74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[82];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.853];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]

RnJvbTogTGluayBNYXV2ZSA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4NCg0KVGhlIGNvcmUgY3Jh
dGUgY3VycmVudGx5IGRlcGVuZHMgb24gdGhlc2UgdHdvIGZ1bmN0aW9ucyBmb3IgaTY0L3U2NC8N
CmkxMjgvdTEyOC9jb3JlOjp0aW1lOjpEdXJhdGlvbiBmb3JtYXR0aW5nLCBidXQgd2Ugc2hvdWxk
buKAmXQgdXNlIHRoYXQgaW4NCnRoZSBrZXJuZWwgc28gbGV04oCZcyBwYW5pYyBpZiB0aGV5IGFy
ZSBldmVyIGNhbGxlZC4NCg0KVGhpcyBkb2VzbuKAmXQgeWV0IGZpeCBkcm1fcGFuaWNfcXIucnMs
IHdoaWNoIGFsc28gdXNlcyBfX3VkaXZkaTMgd2hlbg0KQ09ORklHX0NDX09QVElNSVpFX0ZPUl9T
SVpFPXksIGJ1dCBhdCBsZWFzdCBtYWtlcyB0aGUgcmVzdCBvZiB0aGUga2VybmVsDQpidWlsZCBv
biBQUEMzMi4NCg0KU2lnbmVkLW9mZi1ieTogTGluayBNYXV2ZSA8bGlua21hdXZlQGxpbmttYXV2
ZS5mcj4NClNpZ25lZC1vZmYtYnk6IE11a2VzaCBLdW1hciBDaGF1cmFzaXlhIChJQk0pIDxta2No
YXVyYXNAZ21haWwuY29tPg0KLS0tDQogcnVzdC9NYWtlZmlsZSAgICAgICAgICAgICB8IDQgKysr
Kw0KIHJ1c3QvY29tcGlsZXJfYnVpbHRpbnMucnMgfCA2ICsrKysrKw0KIDIgZmlsZXMgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvcnVzdC9NYWtlZmlsZSBiL3J1c3Qv
TWFrZWZpbGUNCmluZGV4IDJhNTQyOGE1NTAzZC4uZWUxMWZiYTdhMDNkIDEwMDY0NA0KLS0tIGEv
cnVzdC9NYWtlZmlsZQ0KKysrIGIvcnVzdC9NYWtlZmlsZQ0KQEAgLTYxNiw2ICs2MTYsMTAgQEAg
aWZuZXEgKCQob3IgJChDT05GSUdfQVJNNjQpLCQoYW5kICQoQ09ORklHX1JJU0NWKSwkKENPTkZJ
R182NEJJVCkpKSwpDQogCQlfX2FzaHJ0aTMgXA0KIAkJX19hc2hsdGkzIF9fbHNocnRpMw0KIGVu
ZGlmDQoraWZkZWYgQ09ORklHX1BQQzMyDQorCXJlZGlyZWN0LWludHJpbnNpY3MgKz0gXA0KKwkJ
X191ZGl2ZGkzIF9fdW1vZGRpMw0KK2VuZGlmDQogDQogaWZkZWYgQ09ORklHX01PRFZFUlNJT05T
DQogY21kX2dlbmR3YXJma3N5bXMgPSAkKGlmICQoc2tpcF9nZW5kd2FyZmtzeW1zKSwsIFwNCmRp
ZmYgLS1naXQgYS9ydXN0L2NvbXBpbGVyX2J1aWx0aW5zLnJzIGIvcnVzdC9jb21waWxlcl9idWls
dGlucy5ycw0KaW5kZXggZGQxNmMxZGM4OTljLi5mYzZiNTQ2MzZkZDUgMTAwNjQ0DQotLS0gYS9y
dXN0L2NvbXBpbGVyX2J1aWx0aW5zLnJzDQorKysgYi9ydXN0L2NvbXBpbGVyX2J1aWx0aW5zLnJz
DQpAQCAtOTcsNSArOTcsMTEgQEAgcHViIGV4dGVybiAiQyIgZm4gJGlkZW50KCkgew0KICAgICBf
X2FlYWJpX3VsZGl2bW9kLA0KIH0pOw0KIA0KKyNbY2ZnKHRhcmdldF9hcmNoID0gInBvd2VycGMi
KV0NCitkZWZpbmVfcGFuaWNraW5nX2ludHJpbnNpY3MhKCJgdTY0YCBkaXZpc2lvbi9tb2R1bG8g
c2hvdWxkIG5vdCBiZSB1c2VkIiwgew0KKyAgICBfX3VkaXZkaTMsDQorICAgIF9fdW1vZGRpMywN
Cit9KTsNCisNCiAvLyBOT1RFOiBpZiB5b3UgYXJlIGFkZGluZyBhIG5ldyBpbnRyaW5zaWMgaGVy
ZSwgeW91IHNob3VsZCBhbHNvIGFkZCBpdCB0bw0KIC8vIGByZWRpcmVjdC1pbnRyaW5zaWNzYCBp
biBgcnVzdC9NYWtlZmlsZWAuDQotLSANCjIuNTMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
