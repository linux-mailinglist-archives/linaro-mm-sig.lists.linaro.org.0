Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CSwAf//4Gk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:27:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F6D410BEE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:27:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C763940A1A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:27:57 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 6D35F3F719
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 11:30:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=H3yU8LRG;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477563e28a3so28322545e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Nov 2025 03:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763983807; x=1764588607; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FIrNcMo3OIORc59oYq11M7V6LWyQ4cuR88/fqcwGDYI=;
        b=H3yU8LRGQEDUvXAL9V07cDtd9QL/4x9VO7VpEJZtWQPZ/weIXT2ROohIrH4jNQtaN7
         Y7km8S3VIMAqcQMOnFleIFxx9ECDFt9ceodViTCei68Mn3eV00zAkUao6XVc+8BZ90bh
         IqWZYG1//SGJdhdcGFXQaQZxwZWPu2SXlv7MS2dskmlI7lvQLsPR2lqJWT7e1UaPqBP/
         DWaEmVqeSvcdVTerYpwY0o7BvWVSuyKTOf16UyYnVZ4oeRcJNq00cQmA4d/xz4FosOlU
         XVJyWmCIMJL5Hzey5FRQxNMC0uWXlcwm2eXk8qiA6TNdQnd9GHBGqQ+9W2BY+o4YnhjO
         hyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763983807; x=1764588607;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FIrNcMo3OIORc59oYq11M7V6LWyQ4cuR88/fqcwGDYI=;
        b=Rya+RCiMBhHC/6qJRtCLb3tSzS3XFYWLOtdqf46B4k77c3pwv95JKTF643cM9C9IDO
         WyNuqlEBfVuYxxaLaGbLn6NKa5KiXxg8F86YMaGyM2jbdQK8yRCCoH1lsxlcXx8QIdip
         EJ2MmDwm8WQKYEp0VvAfVJyYFjmjzXAV23bf4qgChaqgg7Ky4Cz9mcIsRlu5BOZhmUCN
         r6CMNJI1eW/w+XMLXbMHbGRZyDGr5q63Th9tEx/EJiwEDXdZDVa2lH7SYAuGlpgX1nWw
         /e9RgxjSQ2ZdlqLREV/3StJloiJ1E5PeLNt3Jqps9Doj538X31Vg6FXTt0NPFEqagFRA
         0E9w==
X-Forwarded-Encrypted: i=1; AJvYcCV1cOTo1pIrMM/35gYNaR+Tgrw83ElD6/gL/48sEiFYTtBMM7iHtZz3x/qrzX84tsmlFAg7KBiIb5heCyZm@lists.linaro.org
X-Gm-Message-State: AOJu0YzveMyveA7cWezW71s1SadL0BBOhjMYWZk04OxxITx1sElUcQ9k
	FNYfpoR614YbdJiF1uWLnJX2yaogfNGrmCXzWK1GX36eWLTCCmqAvSEF
X-Gm-Gg: ASbGnculPda8Vx0eHtASm/OFdFnxOSSe1d9RLV8a4pWtCajyN+BqxrDmOK1ZxjvzRXv
	PQFhp7CO+VDMDoYLi3cW3k5lJ3qnw/tWKek1jFBJFYSVjpcAH2U3QEBVUPWQOcXGb0bda9p/n+x
	2OLVi7Kd/64IHuHtS7rxwZRIKOIwfHdCbDh6ex2vyapOFgRRVJINXIWsQoKailqqvhLXXUx7fF+
	MQYxnit3acu8Y3lAfV59olw8LgovnZSG0KGy+gMWGJ01f/SoZUjjbuYhjxeEIMMf8GvvidWlES4
	gB3eWS0N0vc2gC6guYzJLO8YqSG5/OZ/cV8JU/5HgAHkZh52UAF3/3qgTHT7zx0sHiSTDe06sXn
	lN/dxMMxtZELdI59pXPECffsSjZWbON+haeF69TXwdm/EzZJ9KtgWnq17rZnY/cyNI99o6vb/sg
	7LcXX2wpkoP1tYP40XyXIGTBhc7Oxivs1iBEFD/7PCscoz6Sjw2RmHCahPvRntuHewjYkMnw0D
X-Google-Smtp-Source: AGHT+IH4rhfkRALzBtaC9gdxzf7gjncNKNUbJLJsQNk7iBQd1pjAZr0TQJP790c1nQt2gF0ktavqUA==
X-Received: by 2002:a05:600c:1d14:b0:477:9d88:2da6 with SMTP id 5b1f17b1804b1-477c026ed62mr113061345e9.0.1763983807185;
        Mon, 24 Nov 2025 03:30:07 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f2e432sm27351895f8f.9.2025.11.24.03.30.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 03:30:06 -0800 (PST)
Message-ID: <905ff009-0e02-4a5b-aa8d-236bfc1a404e@gmail.com>
Date: Mon, 24 Nov 2025 11:30:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-block@vger.kernel.org, io-uring@vger.kernel.org
References: <cover.1763725387.git.asml.silence@gmail.com>
 <fd10fe48-f278-4ed0-b96b-c4f5a91b7f95@amd.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <fd10fe48-f278-4ed0-b96b-c4f5a91b7f95@amd.com>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2HCY4HK4PW2VPKJEK7SB2S34B3NJUX6A
X-Message-ID-Hash: 2HCY4HK4PW2VPKJEK7SB2S34B3NJUX6A
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:51 +0000
CC: Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 00/11] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2HCY4HK4PW2VPKJEK7SB2S34B3NJUX6A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[3435];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.880];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: B5F6D410BEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTEvMjQvMjUgMTA6MzMsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IE9uIDExLzIzLzI1
IDIzOjUxLCBQYXZlbCBCZWd1bmtvdiB3cm90ZToNCj4+IFBpY2tpbmcgdXAgdGhlIHdvcmsgb24g
c3VwcG9ydGluZyBkbWFidWYgaW4gdGhlIHJlYWQvd3JpdGUgcGF0aC4NCj4gDQo+IElJUkMgdGhh
dCB3b3JrIHdhcyBjb21wbGV0ZWx5IHN0b3BwZWQgYmVjYXVzZSBpdCB2aW9sYXRlZCBjb3JlIGRt
YV9mZW5jZSBhbmQgRE1BLWJ1ZiBydWxlcyBhbmQgYWZ0ZXIgc29tZSBwcml2YXRlIGRpc2N1c3Np
b24gd2FzIGNvbnNpZGVyZWQgbm90IGRvYWJsZSBpbiBnZW5lcmFsLg0KPiANCj4gT3IgYW0gSSBt
aXhpbmcgc29tZXRoaW5nIHVwIGhlcmU/DQoNClRoZSB0aW1lIGdhcCBpcyBwdXJlbHkgZHVlIHRv
IG1lIGJlaW5nIGJ1c3kuIEkgd2Fzbid0IENDJ2VkIHRvIHRob3NlIHByaXZhdGUNCmRpc2N1c3Np
b25zIHlvdSBtZW50aW9uZWQsIGJ1dCB0aGUgdjEgZmVlZGJhY2sgd2FzIHRvIHVzZSBkeW5hbWlj
IGF0dGFjaG1lbnRzDQphbmQgYXZvaWQgcGFzc2luZyBkbWEgYWRkcmVzcyBhcnJheXMgZGlyZWN0
bHkuDQoNCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9jb3Zlci4xNzUxMDM1ODIwLmdpdC5h
c21sLnNpbGVuY2VAZ21haWwuY29tLw0KDQpJJ20gbG9zdCBvbiB3aGF0IHBhcnQgaXMgbm90IGRv
YWJsZS4gQ2FuIHlvdSBlbGFib3JhdGUgb24gdGhlIGNvcmUNCmRtYS1mZW5jZSBkbWEtYnVmIHJ1
bGVzPw0KDQo+IFNpbmNlIEkgZG9uJ3Qgc2VlIGFueSBkbWFfZmVuY2UgaW1wbGVtZW50YXRpb24g
YXQgYWxsIHRoYXQgbWlnaHQgYWN0dWFsbHkgYmUgdGhlIGNhc2UuDQoNClNlZSBQYXRjaCA1LCBz
dHJ1Y3QgYmxrX21xX2RtYV9mZW5jZS4gSXQncyB1c2VkIGluIHRoZSBtb3ZlX25vdGlmeQ0KY2Fs
bGJhY2sgYW5kIGlzIHNpZ25hbGVkIHdoZW4gYWxsIGluZmxpZ2h0IElPIHVzaW5nIHRoZSBjdXJy
ZW50DQptYXBwaW5nIGFyZSBjb21wbGV0ZS4gQWxsIG5ldyBJTyByZXF1ZXN0cyB3aWxsIHRyeSB0
byByZWNyZWF0ZSB0aGUNCm1hcHBpbmcsIGFuZCBoZW5jZSBwb3RlbnRpYWxseSB3YWl0IHdpdGgg
ZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KCkuDQoNCj4gT24gdGhlIG90aGVyIGhhbmQgd2UgaGF2ZSBk
aXJlY3QgSS9PIGZyb20gRE1BLWJ1ZiB3b3JraW5nIGZvciBxdWl0ZSBhIHdoaWxlLCBqdXN0IG5v
dCB1cHN0cmVhbSBhbmQgd2l0aG91dCBpb191cmluZyBzdXBwb3J0Lg0KDQpIYXZlIGFueSByZWZl
cmVuY2U/DQoNCi0tIA0KUGF2ZWwgQmVndW5rb3YNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
