Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGJhDUpH62kmKgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 12:34:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F9145D262
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 12:34:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A208B405D2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 10:34:43 +0000 (UTC)
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	by lists.linaro.org (Postfix) with ESMTPS id 4353B405D0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 10:34:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="J/oIwa56";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of miguel.ojeda.sandonis@gmail.com designates 74.125.82.177 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2d9472c97dbso673488eec.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 03:34:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777026880; cv=none;
        d=google.com; s=arc-20240605;
        b=S1OsEvlVyYmLBmUoDkKHFDxULkjJmwGVC6KiG0BphxBrIHUdbDctNFDh+D1IO1JVaQ
         mIQIW/EXTsRTfzE/MIE1tOuk8hVVYOWJsH27ocL3Zsmru1k7gYxgLmlath7za7HHluJm
         /kgG0zOOoeHKnfxkOcpT3rcBGZpAArR7HWClv58r8tFBYx/8h8BRzdI7KQGRoFPz8nnj
         T2rvmZ49jRR4F0pQNc9ODGHw9XEZ7H4GAUCbeaTzEnW1fQ9/cg6nT5WW7xhJcL7/MbM8
         0qxg10NNoln5ABCg7jzP4yYwhl3tmdc80qKtwL2MybBX9as2XKPzcNTJJidnf7ltwrhh
         9rnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yTJizOE+aTFx68oE3PlVDChTaWYKzRYowl6JulRmua4=;
        fh=v2b4QnZTvXcR1BjmDjt1xSfG/OI6dTMOCW8BtYqZayI=;
        b=Z0w9zxhuUExqLpSZIc1eDRYzp0rRJbgCwCJHi5TYLSdmEck4NREVMbcNu1NC7fz8IY
         gptayjlv86zowNHgCb8dm/V86tRL8DL/WRmyZ5JQ511smFBQzaQrefcgFw93nJVd8uT/
         K5YyKyb/7bfsRZbsJ/dhNVNDbNuJAn+BLSjjBm22ayVp9k5U4bwgh0PiNVnq4NQYgkUw
         bECXdDOA/6gzw8vDYjRdlf5fic5gEdvVRQ49Ti1VsB+xg5yBpXMGZd84KY65dPe+fAZf
         CG3fSEYB99WslOfjOJLpo2DCIZTT5HEzCi/N3xVUo27oV32TuaX+qLbEA7cKQQ+ZczO8
         EUjQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777026880; x=1777631680; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yTJizOE+aTFx68oE3PlVDChTaWYKzRYowl6JulRmua4=;
        b=J/oIwa56AN0txpn+5FFl5wEc+nv+P21mOv1ipPS2MyCOncC/C/18u07vkbRls4dvNX
         cAsG0Jfr2GNlruWTDZNjXL7tvu+F4TPon4ojBdJk2lfMuwdTRDASCCVOZeG1pYfIzKAy
         AWGwYA8OcNeI8Q72piBNPvmvRrEm3/BIIbD69c+kDLbEyHrGuHO4BjElcDYf18s16P1N
         YsXUhAfugvMCUW+/IVlbtcPVkmgbVI/MeCOvxOeLhLGHL7pXl6Dzs/f7MFmVJfUQnqRy
         zk1mx/MuFr4AVSKw2Kg8/zNhYb9o6Iu34RKcn+3/VodrbeX/yMsd23Rm9j0LhexBA711
         p9Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777026880; x=1777631680;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yTJizOE+aTFx68oE3PlVDChTaWYKzRYowl6JulRmua4=;
        b=VrBCfJlAO0gesRj7q8o8vKnZvCC7U6ElxuM9JHeyYifuau9t9NtYwLd4COjRUGntbl
         sUIDHa74XdHFP77u6dJvE+R69y3Ymm+iKK+MMN8fs7w5XfJTobMaupitTkrf3Xq4iwWF
         Q9dftdsgDduGPHNwGJ/LRizMkjFzX9qFDUSntSqnbtxdVMz6KBhzzsWv0pazcDAuHJK5
         d9bME98A0jizuPOm4AsmNzgHLmNUMGIv9rX2FDxPfZS0w3yxdefh5AkmEQI/rUlYsTkK
         GIxzJjZhARo0ujpcn1ENs9DIveupfRoz3TIMhD0zHAjgMVrwxws6jLzl9MQodKeJHqo0
         BL3Q==
X-Forwarded-Encrypted: i=1; AFNElJ9NxPGlXIfuU2w7wZdlOb/ssynKhrZ2j3/hI3nx2waDWWy4/RGCzsrwmA8JonjQ0KSVfWSK+HBEl/ll+Nv5@lists.linaro.org
X-Gm-Message-State: AOJu0YzAkelT9ovMILgkB4+IXgKMmIIYR2oeRl01r8xiqSYQVSRKG4A6
	+dV+6+1H7tRe+ABqcCDKMPDwX/8QwJUga2GuVfMd+BxmymGyLeZ4peDlHwU2LJQ4nw1VR19s/xh
	gDN1W/GsBeixOQQjR7HZamBm3/8IHK34=
X-Gm-Gg: AeBDieuixacfsVmfRnbDFXVIcW5KXVSgAz8yrtV9M+zbnDSlErivHRH0anxriJNiVdz
	pI7p0e8MIGFQHOdEnExKYIg29pePZXL6NZ100M1WFRMbW9H9r6QPUD3m2TppVV54GVXLhK52xlI
	2GkRNUzl4VAQ4PcLf95t1HKGX0iaLU1HdRgyMC3ulNjXCo89LLEbG7uRsAQ8tKaSTrGaU0eHjRX
	Rppz9inWDzbgPbL9ACeSpPuOMexofPbh+MuKBiPPaCNYIpZbWEhynqOEeS2J0Sr8l2WfwriixPm
	4OP/zfkhi/y7An1R+9OaXHrr+ibpWQpud3Q65JdR9ZEhX0zAiat9VZjedoCLclG+T5DfsCCyiyB
	0YYpPj/bKX29x6LcQC/CquKN83862yuSb/w==
X-Received: by 2002:a05:7300:d50e:b0:2bd:d8e6:90a0 with SMTP id
 5a478bee46e88-2e478936a32mr6682650eec.3.1777026880251; Fri, 24 Apr 2026
 03:34:40 -0700 (PDT)
MIME-Version: 1.0
References: <20260424054742.45832-1-mkchauras@gmail.com> <20260424054742.45832-6-mkchauras@gmail.com>
 <20260424101425.6bde0e17@pumpkin> <aes7L3M1d_LvvGKa@luna> <0a81f510-7b49-4879-b0bb-3b24dbfc0788@app.fastmail.com>
In-Reply-To: <0a81f510-7b49-4879-b0bb-3b24dbfc0788@app.fastmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 24 Apr 2026 12:34:27 +0200
X-Gm-Features: AQROBzBsdDZLB2GUpMgvGgFgU1KPjXwk3TMpDFKjffQGyp1lulncbpRBZafhAFU
Message-ID: <CANiq72mZGb+mTwP-8pTLe81oM0QnK-WtQeVjKPiP5m8zK_tOnw@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
X-Spamd-Bar: ---
Message-ID-Hash: CLWGJFQ2P44DWFOJD5WQDTSGWWI63T7L
X-Message-ID-Hash: CLWGJFQ2P44DWFOJD5WQDTSGWWI63T7L
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Link Mauve <linkmauve@linkmauve.fr>, David Laight <david.laight.linux@gmail.com>, "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>, Madhavan Srinivasan <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <chleroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@kernel.org>, Jason Baron <jbaron@akamai.com>, Alice Ryhl <aliceryhl@google.com>, Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ardb@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Miguel Ojeda <ojeda@kernel.org>, boqun@kernel.org, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, Bil
 l Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, tamird@kernel.org, Nicolas Schier <nsc@kernel.org>, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CLWGJFQ2P44DWFOJD5WQDTSGWWI63T7L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 17F9145D262
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linkmauve.fr,gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[arnd.arndb.de:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,arndb.de:email,linaro.org:email]

T24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMTI6MjHigK9QTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFy
bmRiLmRlPiB3cm90ZToNCj4NCj4gSG93IGhhcmQgd291bGQgaXQgYmUgdG8gaGF2ZSBhIHByaXZh
dGUgY29weSBvZiB0aGUgcGFydHMgb2YgdGhlIGNvcmUNCj4gY3JhdGUgdGhhdCB0aGUga2VybmVs
IGFjdHVhbGx5IG5lZWRzPyBTaW5jZSBMaW51eCBpcyBuZWl0aGVyIHF1aXRlDQo+IGhvc3RlZCAo
dXNpbmcgYSBmdWxsIGxpYmMpIG5vciBlbnRpcmVseSBmcmVlc3RhbmRpbmcgKHN0aWxsIHVzaW5n
DQo+IHNvbWUgbGlicmFyeSBpbnRlcmZhY2VzKSwgdGhlIEMgaW1wbGVtZW50YXRpb24gb24gbW9z
dCBhcmNoaXRlY3R1cmVzDQo+IGhhcyBhIHNtYWxsIHN1YnNldCBvZiB0aGUgbGliZ2NjIHRoYXQg
d2Ugc2hpcCB3aXRoIHRoZSBrZXJuZWwuDQo+DQo+IEkgYXNzdW1lIHRoZSBjb3JlIGNyYXRlIGlz
IGxhcmdlciB0aGFuIGxpYmdjYywgYnV0IEkgZG9uJ3Qga25vdyBob3cNCj4gbXVjaCBvZiBpdCBp
cyBhY3R1YWxseSBuZWVkZWQgaGVyZS4NCg0KSXQgaXMgZmFpcmx5IHRpZWQgdG8gdGhlIGNvbXBp
bGVyIHZlcnNpb24sIHNvIGl0IHdvdWxkIGJlIGENCnN1YnN0YW50aWFsIGVmZm9ydCB0byBzdXBw
b3J0IGFjcm9zcyBhIGJ1bmNoIG9mIHZlcnNpb25zLiBJbnN0ZWFkIG9mDQp0aGF0LCBpbml0aWFs
bHkgd2UgYXNrZWQgdG8gaGF2ZSBzb21lIGBjZmdgcyAoaS5lLiBjb25kaXRpb25hbA0KY29tcGls
YXRpb24pIHRvIGN1c3RvbWl6ZSBpdCBpbiB0aGUgZmV3IHBsYWNlcyB3ZSBuZWVkLiBXZSBhbHJl
YWR5DQpwYXNzIGAtLWNmZyBub19mcF9mbXRfcGFyc2VgIGZvciBpbnN0YW5jZS4NCg0KVGhlcmUg
d2VyZSBjb25jZXJucyBhYm91dCBjb21iaW5hdG9yaWFsIGV4cGxvc2lvbiBvZiBgY2ZnYHMsIHNv
IHdlDQpzdWdnZXN0ZWQgYGNmZyhsaW51eF9rZXJuZWwpYCBvciBzaW1pbGFyIGluc3RlYWQsIHRo
b3VnaCBub3RoaW5nDQpoYXBwZW5lZCBzbyBmYXIuDQoNClRoZSBvdGhlciBvcHRpb24gaXMgdG8g
YXQgbGVhc3QgbGludCBhZ2FpbnN0IGNlcnRhaW4gb3BlcmF0aW9ucywgYnV0IEkNCnRoaW5rIGl0
IHdvdWxkIGJlIGJldHRlciB0byBoYXZlIGEgd2F5IHRvIHRlbGwgdGhlIGNvbXBpbGVyIHdlIHJl
YWxseQ0KZG9uJ3Qgd2FudCB0aGVtIGdlbmVyYXRlZCB0byBiZWdpbiB3aXRoLg0KDQpDaGVlcnMs
DQpNaWd1ZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
