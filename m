Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WMJTLFE9UmoFNgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 14:55:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B9E741910
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 14:55:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=lB4XEEaN;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BA2D40962
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 12:55:44 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by lists.linaro.org (Postfix) with ESMTPS id 15C163F6E7
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Jul 2026 12:55:33 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-381d656c36eso151655a91.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Jul 2026 05:55:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783774532; cv=none;
        d=google.com; s=arc-20260327;
        b=cWjycxdBptcjuF1f7ibz5sYVwNIQYzQvQmDGJB0olath2tsCar+8Sgec/bCxCbHq/v
         poz9CD1qR7MUQBVqWCOHeb9dihlFRolvKEDbBDoqbpGyXcryY3rQj/ndWIlUOLftanaS
         G2wCihWItplPOwHY30YpK+wAwl8C9Q0VLcuaUqXNbAmEqC1TRm69PMmYWmaAYYaNIU+q
         ArwxWFPN2tUCtOJvrrMzUd1ZHnriMf1qZa44Sag77xINzP9vvJb7Y2cvqK9p3TgH2Lh+
         FXDTB5c2OBSMQfb9d1YGmPZhI4p4BY2ylCY3JWxDI3EUIupdFURmNvWVvST77H2l89rj
         fBpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1zUvgb/Vijkk139Zbj5Mh0/O0qV2LR06s+/nZ2EMR/8=;
        fh=zkDy/DqRwspV6UDGfWWyG7Ii/78Jqv4G/8U7MrpipZU=;
        b=Xap5yLHtTDRNPn4Oi7KGPmoXZgOAYpGJNiV+oPC6KjIHEuLnYwRH21fAKkeTjSQTS8
         CmhkyhizxvKKBCUEvLG8GotBjEHOxaCN/d4qnoqfG4OQbp6WCrm/iq/wPViXNosUSPk5
         Q86P6KaXdMfK4D6Is+9ifdBjBpLxhSd1ysz34562sCTJI6n3HY7saSpYSjRiunpq/5a5
         fqcFT8z0yH4wjntpSKoQNDAotAHu3lelclwAq7iuxnCkrjnvfV16WI8XiDPRGzxvN/1A
         yUkFNBdDmleuCHGcOyEKORfDbCVw3iIjwawLW8DD7DEggTR0r+T/v5ZkPCmcl86mQyot
         gfsA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783774532; x=1784379332; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1zUvgb/Vijkk139Zbj5Mh0/O0qV2LR06s+/nZ2EMR/8=;
        b=lB4XEEaNaD/W64Tvq9gt8n56F2zbKhKSknRNZMUw4N4LEuVZxYCndYOtA0TkDT6hpD
         Jefx0xIMOlGfV7tNaJIlm5vqPOk7cMm9CzahDA8RKp3dv6Hw2UJaQ4znHhsUElFTp183
         9w/RS1FXjigYEH3FVAYvDoWT0DD94a1R4/E31/QZT96/fct3P4RTH4Ob2M2iC9LFEcw9
         4ihL7NFM+Z2gf992RUoICr7lJYIQoTGoMCpU1mF/ryIPJJeHCnaylcemgyiFzMijrt9z
         /RwvWPMGCooNc8RCthJFgCcFiwGyzqIIoji03u99F2AYji22fEa0pbQS2KapN5qYh0zR
         5bpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783774532; x=1784379332;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1zUvgb/Vijkk139Zbj5Mh0/O0qV2LR06s+/nZ2EMR/8=;
        b=lxv5wieArq6hFG33naVU+AqEH0InvYzUBtBQeMSIlkx2Hl79g28DLRD/WNElBJeW3u
         aDcs61dDtc6ibF2l1wDbuWL6rRcF2rCotTDnnUVFGpJcCQqAU0zANYg7puDcRK/TXe6D
         peug0tk3RbCAADtneMFedu/UYFi8O1IgPUoO8TsJi2sMHMuvD3CgpsEwAnHRke0v/puS
         SOcCz9vYevWqeeu86DJEPtF+Fg3XN9gXuwDuUtSCxjzYV40CNqi+C8cItYbRL7gVZCN1
         MHXlNt8tF6HXVbBE4nqeFUr3drnfzf8pKMsMMmOBA8NRrwBoWdfYaAb2K7TYMZcPiO/t
         aWkA==
X-Forwarded-Encrypted: i=1; AHgh+RougkQb7hTxdjfvmyNoaClM1x+TIK7Nfpbs1PmlwtmAS/r7NFpziaKC/5ogaTptH39NMmb8owt4I/X6BZRY@lists.linaro.org
X-Gm-Message-State: AOJu0YyGjqoW4+qvcwN3EtsG+upOrOly/7GSpfpZRk/6OH4b8WYzZQn2
	QdnEibR8/gvh8S5bnHJ8SaaBcst3lYdVHDBT86wUZ2/toiH33r9aUzMz12OmgeTALZ6kSoLqzeB
	gn2omXKNaTsTj9DyLykPqqCrpcT6wWH4=
X-Gm-Gg: AfdE7cmZnJxUdb30KE1Td5jz5rOORsbaR7ptcTPuihNTtaVuCiXN2CSEnxtrfd5Kw2P
	lGsVh6sI9ZVHOzc1kC9wbD5oUiRbOzgXc3t2DZGATmLVr67uWSL4tflTa+lTvvCwdaQsAbqjlm0
	j0VkxXukYr4k5U6DfIysJFxb/dk43/RQo5ScUCLoKjW4qih7w3dwZEftD7EGwTehdWVx9lgz8yd
	2k/3hbJoFSqMjUxXmVuOO1ZfmBS+UFIo1ld+yniXqH7MnUwNIPEkWIFBpTjTAhjz0MUweaodN3q
	7FnSuuowb+7fZYCS+mEOBxWYHz2pyKW/0t3m66bjOBjAjnjSCIxIG0cxIlDY/a5reiTwoK9o16b
	1EEdJ+vxPCvkh
X-Received: by 2002:a17:90b:3e48:b0:380:7688:fc06 with SMTP id
 98e67ed59e1d1-38dc7849860mr2139954a91.8.1783774532077; Sat, 11 Jul 2026
 05:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260708-dma-shared-buffer-config-v1-1-8c1571000855@kernel.org>
In-Reply-To: <20260708-dma-shared-buffer-config-v1-1-8c1571000855@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 11 Jul 2026 14:55:19 +0200
X-Gm-Features: AUfX_mxzrtwl0-qM1WcyDgdPW3fSN_iew-N8VZzUs1Dmg7dy-KYQxeN-HmNLFeM
Message-ID: <CANiq72m9t0y3pfZUw_KbJSjujjQcM=FHxTCLenPoC_-v2udibw@mail.gmail.com>
To: Andreas Hindborg <a.hindborg@kernel.org>,
	"Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>
X-Spamd-Bar: -----
Message-ID-Hash: ZSYO6P55MLWHQHMGMPCLE4EYL5EUUDXU
X-Message-ID-Hash: ZSYO6P55MLWHQHMGMPCLE4EYL5EUUDXU
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Daniel Almeida <daniel.almeida@collabora.com>, Tamir Duberstein <tamird@kernel.org>, Alexandre Courbot <acourbot@nvidia.com>, =?UTF-8?Q?Onur_=C3=96zkan?= <work@onurozkan.dev>, Asahi Lina <lina+kernel@asahilina.net>, David Airlie <airlied@gmail.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] rust: helpers: guard dma_resv helpers with CONFIG_DMA_SHARED_BUFFER
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZSYO6P55MLWHQHMGMPCLE4EYL5EUUDXU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:a.hindborg@kernel.org,m:mkchauras@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:daniel.almeida@collabora.com,m:tamird@kernel.org,m:acourbot@nvidia.com,m:work@onurozkan.dev,m:lina+kernel@asahilina.net,m:airlied@gmail.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rust-for-linux@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:lina@asahilina.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,collabora.com,nvidia.com,onurozkan.dev,asahilina.net,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 17B9E741910

T24gV2VkLCBKdWwgOCwgMjAyNiBhdCAxOjUz4oCvUE0gQW5kcmVhcyBIaW5kYm9yZyA8YS5oaW5k
Ym9yZ0BrZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gQ29tbWl0IDliODM2NjQxZDNiZiAoInJ1c3Q6
IGhlbHBlcnM6IEFkZCBiaW5kaW5ncy93cmFwcGVycyBmb3INCj4gZG1hX3Jlc3ZfbG9jayIpIGFk
ZGVkIHJ1c3RfaGVscGVyX2RtYV9yZXN2X2xvY2soKSBhbmQNCj4gcnVzdF9oZWxwZXJfZG1hX3Jl
c3ZfdW5sb2NrKCkgdW5jb25kaXRpb25hbGx5LiBIb3dldmVyLCB0aGUgZG1hLXJlc3YNCj4gZnVu
Y3Rpb25hbGl0eSBpcyBvbmx5IGF2YWlsYWJsZSB3aGVuIENPTkZJR19ETUFfU0hBUkVEX0JVRkZF
UiBpcw0KPiBlbmFibGVkLCByZXN1bHRpbmcgaW4gdGhlIGZvbGxvd2luZyBsaW5rIGVycm9yIHdo
ZW4gaXQgaXMgbm90Og0KPg0KPiAgICAgICBMRCAgICAgIC50bXBfdm1saW51eDENCj4gICAgIGxk
LmxsZDogZXJyb3I6IHVuZGVmaW5lZCBzeW1ib2w6IGRtYV9yZXN2X3Jlc2V0X21heF9mZW5jZXMN
Cj4gICAgID4+PiByZWZlcmVuY2VkIGJ5IGRtYS1yZXN2Lmg6NDYzDQo+ICAgICA+Pj4gICAgICAg
ICAgICAgICBydXN0L2hlbHBlcnMvaGVscGVycy5vOihydXN0X2hlbHBlcl9kbWFfcmVzdl91bmxv
Y2spIGluIGFyY2hpdmUgdm1saW51eC5hDQo+DQo+IFRoZSBkbWFfcmVzdl91bmxvY2soKSBpbmxp
bmUgaW4gPGxpbnV4L2RtYS1yZXN2Lmg+IGNhbGxzDQo+IGRtYV9yZXN2X3Jlc2V0X21heF9mZW5j
ZXMoKSwgd2hpY2ggaXMgb25seSBjb21waWxlZCBpbnRvDQo+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jIHdoZW4gQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSIGlzIHNldC4gV2l0aA0KPiB0aGUg
b3B0aW9uIGRpc2FibGVkIHRoZSBzeW1ib2wgaXMgbmV2ZXIgZGVmaW5lZCwgc28gdGhlIGhlbHBl
ciBmYWlscw0KPiB0byBsaW5rLg0KPg0KPiBGaXggdGhpcyBieSBndWFyZGluZyB0aGUgaGVscGVy
IGRlZmluaXRpb25zIHdpdGggYCNpZmRlZg0KPiBDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVJgLg0K
Pg0KPiBUaGUgb25seSB1c2VyIG9mIHRoaXMgaGVscGVyIGlzIHRoZSBEUk0gc2htZW0gYWJzdHJh
Y3Rpb25zLCB3aGljaCBhbHJlYWR5DQo+IGRlcGVuZCBvbiBgQ09ORklHX0RNQV9TSEFSRURfQlVG
RkVSYC4NCj4NCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gRml4ZXM6IDliODM2NjQx
ZDNiZiAoInJ1c3Q6IGhlbHBlcnM6IEFkZCBiaW5kaW5ncy93cmFwcGVycyBmb3IgZG1hX3Jlc3Zf
bG9jayIpDQo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgSGluZGJvcmcgPGEuaGluZGJvcmdAa2Vy
bmVsLm9yZz4NCg0KUGxlYXNlIHNlZToNCg0KICBodHRwczovL2xvcmUua2VybmVsLm9yZy9ydXN0
LWZvci1saW51eC8yMDI2MDcwODA4MjQ1NC4xMjU0MzIwLTMtbWtjaGF1cmFzQGdtYWlsLmNvbS8N
Cg0KQ2hlZXJzLA0KTWlndWVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
