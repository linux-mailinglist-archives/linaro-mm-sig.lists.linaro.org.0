Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FkhOeKH72mCCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B630475C8A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A436406EA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:59:29 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id F139F40507
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 05:49:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MCnqMfaA;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-362e30526f8so432544a91.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 22:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777009754; x=1777614554; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RoXnYHhu5OJq+pQQ/T7jeG1ntNKoLYxlZRpY7d5kjto=;
        b=MCnqMfaACmlJTSbf4j4Wd6zS3CNSRSXtgIB4KgfNjxtAtjJZQDaLlR9xRvjyI8BzTQ
         KB4CqVClSJD0XR8cMxiQtb3HVNW78p5bRAuutASI5cyHhVBpqgipjGfFUfjYgLhZ0ZU/
         51DNIadtGO5DWXTYQmmtIXdEH6ANUYeARAiCdeAlUyVMIawyjjYRhGVJTbYihkKd3nGw
         RGIvANRArt7xoTBXvjhcOcIJ+fdUu1vGUaPfNmH4lvdi63bhzNBShbdaV/EOzHWGLf3H
         gCTdVN0BP+Qdmkm2aysXRVl3vxh2rKEzc82+vV0slVfufT25tQuvFUdIVKKSmPeqYOzu
         g5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777009754; x=1777614554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RoXnYHhu5OJq+pQQ/T7jeG1ntNKoLYxlZRpY7d5kjto=;
        b=pTpMS0ofw0l0Zb+QtZxmVuIpWzTVZfMXoL7b88a23lzAYQHtqpUVPfXv6b7n4z/5nn
         bJ7dV2e4xAOPZHFJtepAn8dIMC+68r69Z8ysTDFzxXEMMrgBf0cJ6puETXyTT4FxRMNA
         woDDYta8V9ejTYkw4FGLCdfDsCZB51eZIdBdXoZ24pJVI2QtTMlQ4k88w9r5DaDcQVSC
         zx9MVvQGPoEd4Q25e1LrrU1ETPR8xAF2Acn78ObTFttsvZ0ZDuzhdfcO08v7K3L1ijsS
         Mc8a0GlISLP1qUtO/pceQ99KaMbrmuk1K3FisioPNyy7ZVTFq/ttpT0xAMhbyQNAjwWK
         OYvg==
X-Forwarded-Encrypted: i=1; AFNElJ9pfj92lPAKrT98KshrhzfgRuEvI/RGhZVL7aKgYciphYEeMK7FDryhTxBdn0/9ytuunw9eYeYNfluOWedX@lists.linaro.org
X-Gm-Message-State: AOJu0YwDkCChyLqWP1lDgfdlKG5FJh2azr3Ixh15wuH79lNx0Se34z+O
	5FsP2Nf8iCLz5BI6Y52tF2b9cnqYYvjH5U+DwWVKYA9d6TuVDclY0J7V
X-Gm-Gg: AeBDietJKJLXQFEApP20mJelN/xyLIcF4KFsu6yzxw0KvvuXROk0iHpF2HJPBX9emYy
	c9UEo2owB1AF6vj5nahChArCcxi27nvjok2D4cW0ysqsjlrB1QKPvKD+2knEPJsjR/28+4zVv3E
	nIXgkthgkAe0+UE48Ls1H6arZszgu8OkYeYrVF2mqPJRvJUEJAWnnu6PdYIZLXyRmKgLKSZA1pW
	WnW/NJpXtxleW2zTuatgCKdfooAYIjVvlANBX54mznBahR3zIoNOIMOseaRI+kF0sSFNdx6O0x5
	wiH6THFKooxfSswfqFZH7zVDQskMLw0F1w60DQp/Jy7tgzH05GHuNrJJSil5vzVAepHkKOW8wyN
	KWxc21HsqoVWooiZ1A7jeTmhf6iIWcwRqIdqPHe11DAylWUPTAGKRPKggQsGr9B4nqMfLKwwDDo
	LHLtqGOL4/en9ENa2yPwrIH0GJKBxSb63E97HC0gMY4cYfBZGxurwCEpHo3lNN6TxirUdNbMqKW
	5wxA7oKRFPSgf8=
X-Received: by 2002:a17:903:1446:b0:2b2:42b1:ad95 with SMTP id d9443c01a7336-2b5f9ee2835mr352292775ad.16.1777009754030;
        Thu, 23 Apr 2026 22:49:14 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.bl1-in.ibm.com ([129.41.58.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa176e9sm208778245ad.20.2026.04.23.22.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 22:49:13 -0700 (PDT)
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
Date: Fri, 24 Apr 2026 11:17:42 +0530
Message-ID: <20260424054742.45832-8-mkchauras@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260424054742.45832-1-mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WAGARIMNMOT37GUSGD24DNBNGGAI4W2H
X-Message-ID-Hash: WAGARIMNMOT37GUSGD24DNBNGGAI4W2H
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:58:46 +0000
CC: Link Mauve <linkmauve@linkmauve.fr>, Venkat Rao Bagalkote <venkat88@linux.ibm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V13 7/7] powerpc: Enable Rust for ppc64le
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WAGARIMNMOT37GUSGD24DNBNGGAI4W2H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 6B630475C8A
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
	RCPT_COUNT_TWELVE(0.00)[38];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_TO(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.804];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,garyguo.net:email,linaro.org:email,linkmauve.fr:email]

RW5hYmxpbmcgcnVzdCBzdXBwb3J0IGZvciBwcGM2NGxlLg0KDQpUZXN0ZWQgb24gcHNlcmllcyBQ
b3dlcjExOg0K4pWw4pSA4p2vIGRtZXNnIHwgZ3JlcCBydXN0DQpbICAgIDAuMjI1NzI4XSBJbml0
aWFsaXNlIHN5c3RlbSB0cnVzdGVkIGtleXJpbmdzDQpbICAgIDAuMjcwOTYxXSBydXN0X21pbmlt
YWw6IFJ1c3QgbWluaW1hbCBzYW1wbGUgKGluaXQpDQpbICAgIDAuMjcwOTY4XSBydXN0X21pbmlt
YWw6IEFtIEkgYnVpbHQtaW4/IHRydWUNClsgICAgMC4yNzA5NzRdIHJ1c3RfbWluaW1hbDogdGVz
dF9wYXJhbWV0ZXI6IDENClsgICAgMC4yNzA5ODNdIHJ1c3RfbWlzY19kZXZpY2U6IEluaXRpYWxp
c2luZyBSdXN0IE1pc2MgRGV2aWNlIFNhbXBsZQ0KWyAgICAwLjI3MTAxMl0gcnVzdF9wcmludDog
UnVzdCBwcmludGluZyBtYWNyb3Mgc2FtcGxlIChpbml0KQ0KWyAgICAwLjI3MTAxOV0gcnVzdF9w
cmludDogRW1lcmdlbmN5IG1lc3NhZ2UgKGxldmVsIDApIHdpdGhvdXQgYXJncw0KWyAgICAwLjI3
MTAyM10gcnVzdF9wcmludDogQWxlcnQgbWVzc2FnZSAobGV2ZWwgMSkgd2l0aG91dCBhcmdzDQpb
ICAgIDAuMjcxMDI2XSBydXN0X3ByaW50OiBDcml0aWNhbCBtZXNzYWdlIChsZXZlbCAyKSB3aXRo
b3V0IGFyZ3MNClsgICAgMC4yNzEwMzBdIHJ1c3RfcHJpbnQ6IEVycm9yIG1lc3NhZ2UgKGxldmVs
IDMpIHdpdGhvdXQgYXJncw0KWyAgICAwLjI3MTAzM10gcnVzdF9wcmludDogV2FybmluZyBtZXNz
YWdlIChsZXZlbCA0KSB3aXRob3V0IGFyZ3MNClsgICAgMC4yNzEwMzddIHJ1c3RfcHJpbnQ6IE5v
dGljZSBtZXNzYWdlIChsZXZlbCA1KSB3aXRob3V0IGFyZ3MNClsgICAgMC4yNzEwNDBdIHJ1c3Rf
cHJpbnQ6IEluZm8gbWVzc2FnZSAobGV2ZWwgNikgd2l0aG91dCBhcmdzDQpbICAgIDAuMjcxMDQz
XSBydXN0X3ByaW50OiBBIGxpbmUgdGhhdCBpcyBjb250aW51ZWQgd2l0aG91dCBhcmdzDQpbICAg
IDAuMjcxMDU0XSBydXN0X3ByaW50OiBFbWVyZ2VuY3kgbWVzc2FnZSAobGV2ZWwgMCkgd2l0aCBh
cmdzDQpbICAgIDAuMjcxMDY0XSBydXN0X3ByaW50OiBBbGVydCBtZXNzYWdlIChsZXZlbCAxKSB3
aXRoIGFyZ3MNClsgICAgMC4yNzEwNzJdIHJ1c3RfcHJpbnQ6IENyaXRpY2FsIG1lc3NhZ2UgKGxl
dmVsIDIpIHdpdGggYXJncw0KWyAgICAwLjI3MTA3N10gcnVzdF9wcmludDogRXJyb3IgbWVzc2Fn
ZSAobGV2ZWwgMykgd2l0aCBhcmdzDQpbICAgIDAuMjcxMDgzXSBydXN0X3ByaW50OiBXYXJuaW5n
IG1lc3NhZ2UgKGxldmVsIDQpIHdpdGggYXJncw0KWyAgICAwLjI3MTA5MV0gcnVzdF9wcmludDog
Tm90aWNlIG1lc3NhZ2UgKGxldmVsIDUpIHdpdGggYXJncw0KWyAgICAwLjI3MTA5N10gcnVzdF9w
cmludDogSW5mbyBtZXNzYWdlIChsZXZlbCA2KSB3aXRoIGFyZ3MNClsgICAgMC4yNzExMDJdIHJ1
c3RfcHJpbnQ6IEEgbGluZSB0aGF0IGlzIGNvbnRpbnVlZCB3aXRoIGFyZ3MNClsgICAgMC4yNzEx
MTBdIHJ1c3RfcHJpbnQ6IDENClsgICAgMC4yNzExMTNdIHJ1c3RfcHJpbnQ6ICJoZWxsbywgd29y
bGQiDQpbICAgIDAuMjcxMTIxXSBydXN0X3ByaW50OiBbc2FtcGxlcy9ydXN0L3J1c3RfcHJpbnRf
bWFpbi5yczozNTo1XSBjID0gImhlbGxvLCB3b3JsZCINClsgICAgMC4yNzExMjldIHJ1c3RfcHJp
bnQ6IEFyYzxkeW4gRGlzcGxheT4gc2F5cyA0Mg0KWyAgICAwLjI3MTEzMF0gcnVzdF9wcmludDog
QXJjPGR5biBEaXNwbGF5PiBzYXlzIGhlbGxvLCB3b3JsZA0KWyAgICAwLjI3MTEzNl0gcnVzdF9w
cmludDogImhlbGxvLCB3b3JsZCINClsgICAgMC4yNzExOThdIHVzYmNvcmU6IHJlZ2lzdGVyZWQg
bmV3IGludGVyZmFjZSBkcml2ZXIgcnVzdF9kcml2ZXJfdXNiDQpbICAgIDAuMjcxMjA3XSBydXN0
X2ZhdXhfZHJpdmVyOiBJbml0aWFsaXNpbmcgUnVzdCBGYXV4IERldmljZSBTYW1wbGUNClsgICAg
MC4yNzEyMjddIGZhdXhfZHJpdmVyIHJ1c3QtZmF1eC1zYW1wbGUtZGV2aWNlOiBIZWxsbyBmcm9t
IGZhdXggZGV2aWNlIQ0KWyAgICAwLjI3MTI5N10gcnVzdF9jb25maWdmczogUnVzdCBjb25maWdm
cyBzYW1wbGUgKGluaXQpDQoNClJldmlld2VkLWJ5OiBMaW5rIE1hdXZlIDxsaW5rbWF1dmVAbGlu
a21hdXZlLmZyPg0KVGVzdGVkLWJ5OiBMaW5rIE1hdXZlIDxsaW5rbWF1dmVAbGlua21hdXZlLmZy
Pg0KUmV2aWV3ZWQtYnk6IENocmlzdG9waGUgTGVyb3kgKENTIEdST1VQKSA8Y2hsZXJveUBrZXJu
ZWwub3JnPg0KVGVzdGVkLWJ5OiBWZW5rYXQgUmFvIEJhZ2Fsa290ZSA8dmVua2F0ODhAbGludXgu
aWJtLmNvbT4NCkxpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9SdXN0LWZvci1MaW51eC9saW51eC9p
c3N1ZXMvMTA1DQpMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vbGludXhwcGMvaXNzdWVzL2lzc3Vl
cy80NTENCkFja2VkLWJ5OiBHYXJ5IEd1byA8Z2FyeUBnYXJ5Z3VvLm5ldD4NClNpZ25lZC1vZmYt
Ynk6IE11a2VzaCBLdW1hciBDaGF1cmFzaXlhIChJQk0pIDxta2NoYXVyYXNAZ21haWwuY29tPg0K
LS0tDQogYXJjaC9wb3dlcnBjL0tjb25maWcgIHwgMSArDQogYXJjaC9wb3dlcnBjL01ha2VmaWxl
IHwgNyArKysrKystDQogcnVzdC9NYWtlZmlsZSAgICAgICAgIHwgNiArKysrKysNCiAzIGZpbGVz
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBh
L2FyY2gvcG93ZXJwYy9LY29uZmlnIGIvYXJjaC9wb3dlcnBjL0tjb25maWcNCmluZGV4IDRhYzg5
N2I2NTBkNC4uMmUzMDY1YmNlOWNkIDEwMDY0NA0KLS0tIGEvYXJjaC9wb3dlcnBjL0tjb25maWcN
CisrKyBiL2FyY2gvcG93ZXJwYy9LY29uZmlnDQpAQCAtMjg2LDYgKzI4Niw3IEBAIGNvbmZpZyBQ
UEMNCiAJc2VsZWN0IEhBVkVfUkVMSUFCTEVfU1RBQ0tUUkFDRQ0KIAlzZWxlY3QgSEFWRV9SU0VR
DQogCXNlbGVjdCBIQVZFX1JVU1QJCQlpZiBQUEMzMg0KKwlzZWxlY3QgSEFWRV9SVVNUCQkJaWYg
UFBDNjQgJiYgQ1BVX0xJVFRMRV9FTkRJQU4NCiAJc2VsZWN0IEhBVkVfU0FNUExFX0ZUUkFDRV9E
SVJFQ1QJaWYgSEFWRV9EWU5BTUlDX0ZUUkFDRV9XSVRIX0RJUkVDVF9DQUxMUw0KIAlzZWxlY3Qg
SEFWRV9TQU1QTEVfRlRSQUNFX0RJUkVDVF9NVUxUSQlpZiBIQVZFX0RZTkFNSUNfRlRSQUNFX1dJ
VEhfRElSRUNUX0NBTExTDQogCXNlbGVjdCBIQVZFX1NFVFVQX1BFUl9DUFVfQVJFQQkJaWYgUFBD
NjQNCmRpZmYgLS1naXQgYS9hcmNoL3Bvd2VycGMvTWFrZWZpbGUgYi9hcmNoL3Bvd2VycGMvTWFr
ZWZpbGUNCmluZGV4IDU4OTYxM2VhYTVkYy4uOTM4NWRiNDc4YzU5IDEwMDY0NA0KLS0tIGEvYXJj
aC9wb3dlcnBjL01ha2VmaWxlDQorKysgYi9hcmNoL3Bvd2VycGMvTWFrZWZpbGUNCkBAIC02MSw3
ICs2MSwxMiBAQCBlbHNlDQogS0JVSUxEX0xERkxBR1NfTU9EVUxFICs9ICQob2JqdHJlZSkvYXJj
aC9wb3dlcnBjL2xpYi9jcnRzYXZyZXMubw0KIGVuZGlmDQogDQotS0JVSUxEX1JVU1RGTEFHUyAJ
Kz0gLS10YXJnZXQ9cG93ZXJwYy11bmtub3duLWxpbnV4LWdudQ0KK2lmZGVmIENPTkZJR19QUEM2
NA0KK0tCVUlMRF9SVVNURkxBR1MJKz0gLS10YXJnZXQ9cG93ZXJwYzY0bGUtdW5rbm93bi1saW51
eC1nbnUNCitLQlVJTERfUlVTVEZMQUdTCSs9IC1DdGFyZ2V0LWZlYXR1cmU9LW1tYSwtdnN4LC1o
YXJkLWZsb2F0LC1hbHRpdmVjDQorZWxzZQ0KK0tCVUlMRF9SVVNURkxBR1MJKz0gLS10YXJnZXQ9
cG93ZXJwYy11bmtub3duLWxpbnV4LWdudQ0KK2VuZGlmDQogDQogaWZkZWYgQ09ORklHX0NQVV9M
SVRUTEVfRU5ESUFODQogS0JVSUxEX0NQUEZMQUdTCSs9IC1tbGl0dGxlLWVuZGlhbg0KZGlmZiAt
LWdpdCBhL3J1c3QvTWFrZWZpbGUgYi9ydXN0L01ha2VmaWxlDQppbmRleCBmZDljMWJmMDI2Y2Eu
LmQ3Yjc0YjIwOWEzMyAxMDA2NDQNCi0tLSBhL3J1c3QvTWFrZWZpbGUNCisrKyBiL3J1c3QvTWFr
ZWZpbGUNCkBAIC00MDgsNyArNDA4LDEzIEBAIEJJTkRHRU5fVEFSR0VUX3g4Ngk6PSB4ODZfNjQt
bGludXgtZ251DQogQklOREdFTl9UQVJHRVRfYXJtNjQJOj0gYWFyY2g2NC1saW51eC1nbnUNCiBC
SU5ER0VOX1RBUkdFVF9hcm0JOj0gYXJtLWxpbnV4LWdudWVhYmkNCiBCSU5ER0VOX1RBUkdFVF9s
b29uZ2FyY2gJOj0gbG9vbmdhcmNoNjQtbGludXgtZ251c2YNCisNCitpZmRlZiBDT05GSUdfUFBD
NjQNCitCSU5ER0VOX1RBUkdFVF9wb3dlcnBjCTo9IHBvd2VycGM2NGxlLWxpbnV4LWdudQ0KK2Vs
c2UNCiBCSU5ER0VOX1RBUkdFVF9wb3dlcnBjCTo9IHBvd2VycGMtbGludXgtZ251DQorZW5kaWYN
CisNCiBCSU5ER0VOX1RBUkdFVF91bQk6PSAkKEJJTkRHRU5fVEFSR0VUXyQoU1VCQVJDSCkpDQog
QklOREdFTl9UQVJHRVQJCTo9ICQoQklOREdFTl9UQVJHRVRfJChTUkNBUkNIKSkNCiANCi0tIA0K
Mi41My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
