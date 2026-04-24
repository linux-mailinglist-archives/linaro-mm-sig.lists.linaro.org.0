Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEZ+HtyH72mCCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C87475C82
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60FD6404F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:59:23 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	by lists.linaro.org (Postfix) with ESMTPS id 43C0F40507
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 05:49:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="HE19tg/8";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.215.182 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c7961d7bc09so2869418a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 22:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777009743; x=1777614543; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=begHw2Fh55YIAbwVuxIcFKYuQNkyXTaAo0Peazo3t08=;
        b=HE19tg/8e5EsGYE/9LCN/wDq9LGsijSvVMOnJB2K4HZUNP623NSPSnQfG9vomA343x
         CNexiRVC61N2PecefiBqVHK0hAjaveZEZKNs+PgUIjo7zzW8OaVrMijWwwQPsoMNFj+Z
         CPJq0lpsnIN3GK0YpvTKxAdLFVLKuJkAKUxxwURky+jN0wYeP1eJ5HozpHP4BFIZ1Y1C
         vSDZd0f2/rrO1poGFNOTs1V5ApbXzIEkxQWuLuIcMQkae90py6qjkQdRbaJ7rFJOTWdG
         AgT1Y2RV2809GFCoNPOS+A6Y6KIZjw64UPiRJRMnPVl0SRdRJUuR/imPh0H7Ak57fs3R
         tYlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777009743; x=1777614543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=begHw2Fh55YIAbwVuxIcFKYuQNkyXTaAo0Peazo3t08=;
        b=mkZZ6RYfMrPjs2QJ3pkVmMv+0hNAxs+XfunP8T1kob9IuWe+oNcZa1XjhBWn0OWUlG
         qu0ZfgbT8n/YMwlZOctYGArKv0rV6IZbsuLtmhfcHFTeHGWAw97pSr1zaeOSw1FH6jjn
         2sTNL5ktkZIOqNk+3JY8TzizsMF+5M8uzNDc2CiQ954O5+CKRcwspdM+pnIWh0GAUJOh
         Ecg6ECnuddnoQ+095skxOA27otAnzC/njcM04bxz1Q/KNUymsrpdXQsK5+CcWhAktB2g
         t1kKxzQpz0BSKWQQWfp4DbpvtiKRND1gaYFKlaAw6Xmr2YJM7EhDENxTSM1RWyoL+ISP
         RODw==
X-Forwarded-Encrypted: i=1; AFNElJ9CDDZYbZEBAs1BybcAm8PFHJYC9CZFUbdNl0TSO4Eqg4W/WhSEcft0ZxPxWp+iGGijaq2VvKvppWHk8QD/@lists.linaro.org
X-Gm-Message-State: AOJu0Yw/5dBM414dz6lYeQJ7zC2wNLHy4u+IzMNjS07ajL92yTBjOWd2
	8XU4iE1JkISqtHrK2IOc3IIfNwCvxZptO8v8LH5qUpIcL66uCgwoUsxj
X-Gm-Gg: AeBDievM1Q1218AbZbVBugCaFGNzRuKfd6cyZ/pQfOKJFGfDs7mIb9v0S9stGokNPz3
	c5vZFZkznvMJ8QjUgX5YItw1kzVhEPZEZ6NbMf4gU4c/2xquw72StEBIYg/0WnYCZltCIwWAsMs
	ffnFWIl7KQ82blPr6/nEnMZARYasZ9G9TpKWqvY/+6ZYb3WXgEZsBwvY3h4/kgDl8NMXppul7Rh
	Fmt7DLjS8d1ztCkJR/GFECNh2TDbfZ57wEVSaTj0JMZCXnCzxPpFeVf4jKNWrBA9GIVyFZH4rFC
	YfFP4HXD/ysfXQ6DIL4Lt2Qalj9MA2MNvLqHpY3UIy0FWZQAS3IuU2Y/aEr2W18j+dSGq9EGZ9R
	mChRVXkTZ+Nx8y8icMGAfj56xxvk6EX745fzzg9ndkjoa/P34XdUekjqBgdV20dDq5NiEa/eN28
	E7VDJMtsSSUzsWsqW65zuD+ET6oLVXyNNNZLVv0/Tudjl7YG9IG1th81dhG05m5uRL4oMC9tG5R
	RKj/vdUWLYI+hs=
X-Received: by 2002:a17:903:1a45:b0:2b2:65db:8c5f with SMTP id d9443c01a7336-2b5f9f4f562mr323157805ad.27.1777009743184;
        Thu, 23 Apr 2026 22:49:03 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.bl1-in.ibm.com ([129.41.58.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa176e9sm208778245ad.20.2026.04.23.22.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 22:49:02 -0700 (PDT)
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
Date: Fri, 24 Apr 2026 11:17:41 +0530
Message-ID: <20260424054742.45832-7-mkchauras@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260424054742.45832-1-mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3BY2EZ5Q45R7CHFPNB3FZBML4UTIT3RT
X-Message-ID-Hash: 3BY2EZ5Q45R7CHFPNB3FZBML4UTIT3RT
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:58:45 +0000
CC: Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V13 6/7] rust: Add PowerPC support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3BY2EZ5Q45R7CHFPNB3FZBML4UTIT3RT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 45C87475C82
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
	NEURAL_HAM(-0.00)[-0.816];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,garyguo.net:email]

RnJvbTogTGluayBNYXV2ZSA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4NCg0KRm9yIG5vdyBvbmx5
IEJpZyBFbmRpYW4gMzItYml0IFBvd2VyUEMgaXMgc3VwcG9ydGVkLCBhcyB0aGF0IGlzIHRoZSBv
bmx5DQpoYXJkd2FyZSBJIGhhdmUuICBUaGlzIGhhcyBiZWVuIHRlc3RlZCBvbiB0aGUgTmludGVu
ZG8gV2lpIHNvIGZhciwgYnV0IEkNCnBsYW4gb24gYWxzbyB1c2luZyBpdCBvbiB0aGUgR2FtZUN1
YmUsIFdpaSBVIGFuZCBBcHBsZSBHNC4NCg0KVGhlc2UgY2hhbmdlcyBhcmVu4oCZdCB0aGUgb25s
eSBvbmVzIHJlcXVpcmVkIHRvIGdldCB0aGUga2VybmVsIHRvIGNvbXBpbGUNCmFuZCBsaW5rIG9u
IFBvd2VyUEMsIGxpYmNvcmUgd2lsbCBhbHNvIGhhdmUgdG8gYmUgY2hhbmdlZCB0byBub3QgdXNl
DQppbnRlZ2VyIGRpdmlzaW9uIHRvIGZvcm1hdCB1NjQsIHUxMjggYW5kIGNvcmU6OnRpbWU6OkR1
cmF0aW9uLCBvdGhlcndpc2UNCl9fdWRpdmRpMygpIGFuZCBfX3Vtb2RkaTMoKSB3aWxsIGhhdmUg
dG8gYmUgYWRkZWQuICBJIGhhdmUgdGVzdGVkIHRoaXMNCmNoYW5nZSBieSByZXBsYWNpbmcgdGhl
IHRocmVlIGltcGxlbWVudGF0aW9ucyB3aXRoIHVuaW1wbGVtZW50ZWQhKCkgYW5kDQppdCBsaW5r
ZWQganVzdCBmaW5lLg0KDQpTaWduZWQtb2ZmLWJ5OiBMaW5rIE1hdXZlIDxsaW5rbWF1dmVAbGlu
a21hdXZlLmZyPg0KTGluazogaHR0cHM6Ly9naXRodWIuY29tL1J1c3QtZm9yLUxpbnV4L2xpbnV4
L2lzc3Vlcy8xMDUNCkxpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9saW51eHBwYy9pc3N1ZXMvaXNz
dWVzLzQ1MQ0KQWNrZWQtYnk6IEdhcnkgR3VvIDxnYXJ5QGdhcnlndW8ubmV0Pg0KU2lnbmVkLW9m
Zi1ieTogTXVrZXNoIEt1bWFyIENoYXVyYXNpeWEgKElCTSkgPG1rY2hhdXJhc0BnbWFpbC5jb20+
DQotLS0NCiBhcmNoL3Bvd2VycGMvS2NvbmZpZyAgfCAxICsNCiBhcmNoL3Bvd2VycGMvTWFrZWZp
bGUgfCAyICsrDQogcnVzdC9NYWtlZmlsZSAgICAgICAgIHwgNCArKystDQogMyBmaWxlcyBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2FyY2gv
cG93ZXJwYy9LY29uZmlnIGIvYXJjaC9wb3dlcnBjL0tjb25maWcNCmluZGV4IGU5M2RmOTViNzll
Ny4uNGFjODk3YjY1MGQ0IDEwMDY0NA0KLS0tIGEvYXJjaC9wb3dlcnBjL0tjb25maWcNCisrKyBi
L2FyY2gvcG93ZXJwYy9LY29uZmlnDQpAQCAtMjg1LDYgKzI4NSw3IEBAIGNvbmZpZyBQUEMNCiAJ
c2VsZWN0IEhBVkVfUkVHU19BTkRfU1RBQ0tfQUNDRVNTX0FQSQ0KIAlzZWxlY3QgSEFWRV9SRUxJ
QUJMRV9TVEFDS1RSQUNFDQogCXNlbGVjdCBIQVZFX1JTRVENCisJc2VsZWN0IEhBVkVfUlVTVAkJ
CWlmIFBQQzMyDQogCXNlbGVjdCBIQVZFX1NBTVBMRV9GVFJBQ0VfRElSRUNUCWlmIEhBVkVfRFlO
QU1JQ19GVFJBQ0VfV0lUSF9ESVJFQ1RfQ0FMTFMNCiAJc2VsZWN0IEhBVkVfU0FNUExFX0ZUUkFD
RV9ESVJFQ1RfTVVMVEkJaWYgSEFWRV9EWU5BTUlDX0ZUUkFDRV9XSVRIX0RJUkVDVF9DQUxMUw0K
IAlzZWxlY3QgSEFWRV9TRVRVUF9QRVJfQ1BVX0FSRUEJCWlmIFBQQzY0DQpkaWZmIC0tZ2l0IGEv
YXJjaC9wb3dlcnBjL01ha2VmaWxlIGIvYXJjaC9wb3dlcnBjL01ha2VmaWxlDQppbmRleCBhNThi
MTAyOTU5MmMuLjU4OTYxM2VhYTVkYyAxMDA2NDQNCi0tLSBhL2FyY2gvcG93ZXJwYy9NYWtlZmls
ZQ0KKysrIGIvYXJjaC9wb3dlcnBjL01ha2VmaWxlDQpAQCAtNjEsNiArNjEsOCBAQCBlbHNlDQog
S0JVSUxEX0xERkxBR1NfTU9EVUxFICs9ICQob2JqdHJlZSkvYXJjaC9wb3dlcnBjL2xpYi9jcnRz
YXZyZXMubw0KIGVuZGlmDQogDQorS0JVSUxEX1JVU1RGTEFHUyAJKz0gLS10YXJnZXQ9cG93ZXJw
Yy11bmtub3duLWxpbnV4LWdudQ0KKw0KIGlmZGVmIENPTkZJR19DUFVfTElUVExFX0VORElBTg0K
IEtCVUlMRF9DUFBGTEFHUwkrPSAtbWxpdHRsZS1lbmRpYW4NCiBLQlVJTERfTERGTEFHUwkrPSAt
RUwNCmRpZmYgLS1naXQgYS9ydXN0L01ha2VmaWxlIGIvcnVzdC9NYWtlZmlsZQ0KaW5kZXggZWUx
MWZiYTdhMDNkLi5mZDljMWJmMDI2Y2EgMTAwNjQ0DQotLS0gYS9ydXN0L01ha2VmaWxlDQorKysg
Yi9ydXN0L01ha2VmaWxlDQpAQCAtNDAwLDEzICs0MDAsMTUgQEAgYmluZGdlbl9za2lwX2NfZmxh
Z3MgOj0gLW1uby1mcC1yZXQtaW4tMzg3IC1tcHJlZmVycmVkLXN0YWNrLWJvdW5kYXJ5PSUgXA0K
IAktZnN0cmljdC1mbGV4LWFycmF5cz0lIC1mbWluLWZ1bmN0aW9uLWFsaWdubWVudD0lIFwNCiAJ
LWZ6ZXJvLWluaXQtcGFkZGluZy1iaXRzPSUgLW1uby1mZHBpYyBcDQogCS1mZGlhZ25vc3RpY3Mt
c2hvdy1jb250ZXh0IC1mZGlhZ25vc3RpY3Mtc2hvdy1jb250ZXh0PSUgXA0KLQktLXBhcmFtPSUg
LS1wYXJhbSBhc2FuLSUgLWZuby1pc29sYXRlLWVycm9uZW91cy1wYXRocy1kZXJlZmVyZW5jZQ0K
KwktLXBhcmFtPSUgLS1wYXJhbSBhc2FuLSUgLWZuby1pc29sYXRlLWVycm9uZW91cy1wYXRocy1k
ZXJlZmVyZW5jZSBcDQorCS1mZml4ZWQtcjIgLW1tdWx0aXBsZSAtbW5vLXJlYWRvbmx5LWluLXNk
YXRhDQogDQogIyBEZXJpdmVkIGZyb20gYHNjcmlwdHMvTWFrZWZpbGUuY2xhbmdgLg0KIEJJTkRH
RU5fVEFSR0VUX3g4Ngk6PSB4ODZfNjQtbGludXgtZ251DQogQklOREdFTl9UQVJHRVRfYXJtNjQJ
Oj0gYWFyY2g2NC1saW51eC1nbnUNCiBCSU5ER0VOX1RBUkdFVF9hcm0JOj0gYXJtLWxpbnV4LWdu
dWVhYmkNCiBCSU5ER0VOX1RBUkdFVF9sb29uZ2FyY2gJOj0gbG9vbmdhcmNoNjQtbGludXgtZ251
c2YNCitCSU5ER0VOX1RBUkdFVF9wb3dlcnBjCTo9IHBvd2VycGMtbGludXgtZ251DQogQklOREdF
Tl9UQVJHRVRfdW0JOj0gJChCSU5ER0VOX1RBUkdFVF8kKFNVQkFSQ0gpKQ0KIEJJTkRHRU5fVEFS
R0VUCQk6PSAkKEJJTkRHRU5fVEFSR0VUXyQoU1JDQVJDSCkpDQogDQotLSANCjIuNTMuMA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
