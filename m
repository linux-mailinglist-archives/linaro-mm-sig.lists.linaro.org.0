Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIe3NNCYDGphjgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 19:07:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B994582D98
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 19:07:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47AF640963
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 17:07:27 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by lists.linaro.org (Postfix) with ESMTPS id 26E0A3F75E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 17:07:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WF7C1p1I;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of olvaffe@gmail.com designates 209.85.128.179 as permitted sender) smtp.mailfrom=olvaffe@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7c0de780bf1so30154607b3.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 10:07:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779210436; cv=none;
        d=google.com; s=arc-20240605;
        b=THIQxEJIPtZFfMvkDynBxOMlwAwepkrPt14E3Z8h4srzZxCpFXMd89FWnL0KJ22zrH
         yibSvmfQWYzHVvv6ebNZH+Iuh91BwCb+BBr6+1uCdSfXPpY9Brm8mLm8URHv32reID2t
         z9lDcjc8BcDjVNqViyzdn2zyBCORoTWYiNUyJ4JC/UnCEMAA1/0Yej61gwTpkasqeVDK
         wLVBl2DBWgq/FlqSSXALhXr5NUoI1aL1xE5r0N9cHnshFRdtkhntY9kuckyvMjqao0cm
         7QTKcHQP1A+VxSvG4Y7YcTLwRFzQfneBAF0D08kLm/rGrwxFuZd57SFWejP7cd44Blsv
         pbqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oEsZwdKUK4CjM7jLOh90h5kzKd0IJynt1iGHOkr4Mv0=;
        fh=XQMc1lmRwdmV/i/x51bb7R9L4seFLAovKtgmA3jdmZw=;
        b=MiXvRPPogonKAK+OOtTG3ORlBzMU+/q0pFZbKTvXWdv89Vfu6T6W5fsHP1U2pgHXOw
         QDHpBQ+OobxheiCW3hGY2U90xjSldtEB4kYGMisv5bcBN1wOP5G56vzqI5SSu33/SaRl
         fVNCdqcI1ypJkCf8YwKoTAeJCj84rATcIiT2anGW5s3WigCRUS+7jkbIWlNvD+7XXCRY
         l5luoZN1qS4MWJjJ4Gp39Bo64NqD9YFPNwaDbVxQsdNhaa5ol2I6k61+hCTlsKuBx5O3
         4oiUA8bDvZXVFdsG+RN4S4cKHB3sMv4f/ANqrhkNaVQ2DggrYmpv206tySLSudLKY1os
         VJSw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779210436; x=1779815236; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oEsZwdKUK4CjM7jLOh90h5kzKd0IJynt1iGHOkr4Mv0=;
        b=WF7C1p1IAgK8KRkDdppK6ZhqvOZdB1v4VSpR5K2canoyVQXGB/lh3ckNlFMM36e39U
         OZH9oipbj9ZpaL/0Wbq0W9MxDPzlLlpm1AOdhxNAw54WyDsJfdeo51vYtbjLgN1DXW4G
         0+pfs5qF2uqSygxGnJVvoPohYxxJ43kgwccYrWNfu7sP0iJdLUCtuvzd9sSVWsj/OL9C
         nKtfx4ZYYRPGbrAkgJJ+FEc4BgK2mU/8tv6Ty/v/4xrUW9INthNx1e2QwuHR4ZFSu2Fu
         0PTe2H7nmx8B4oJ4JCi1PfdDPV8wV8lRmB4v0l2lXxMS1K4VKH+G6SnZShZovVkxn4A8
         v6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779210436; x=1779815236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oEsZwdKUK4CjM7jLOh90h5kzKd0IJynt1iGHOkr4Mv0=;
        b=qF9WiN/t+qqsw4V4yfV2wPwCQpSHW8fFau1PpKaMw9NkauIuw8ri0ZITedzs/i1Xle
         IP5Ht3OdsKKbGp5n/57PLEfseUED95TQqYFnecDD6ALUHAfx5vBd2qxph6AEKtwXu3EN
         1hGgpZ4kuJUGu4dZCIvPZZ090FwR6/rRreXlsf7hGHpiK5lK/71Wq7r5rpxo6kxKbQFl
         +3RQStr3gmDf0a7NUYfhZGu4mBx6KrMpYllwqjMK2vzQ7ISOiFLc7WIw3avwbrV8c4j6
         vYm+oad09RLlW+J6AM36pul4D3G4Hn5rZSo3yb1dn1TPZAZC+7vORrwWkrSkh0ZOAxmc
         JiDg==
X-Forwarded-Encrypted: i=1; AFNElJ89Q9YmONGhvt60mM2eGY4ftWu4knq/olw4Mo9Igl9VwM1u1BjTf3GXvh7FWNn51E+JJyjQRzYLXzavRNCt@lists.linaro.org
X-Gm-Message-State: AOJu0YyxeTgg9v0gmW2cW3J0Tgr9uvpgROgyIDWe+8YptXE0/b0l7sew
	uqFD0/CmJvqG6OJzbgXdVyeCG4lNSXiJvmjp3S4rzZuNyBkOiBJapZuopuE+Tx+w087J7L4sQTQ
	wUaB/k8IDUQemn5h/SN7mHQF/CROA8fM=
X-Gm-Gg: Acq92OHMGZHH04SLOaxXQ2xK1l9s4gANQjsoSEDb+1v0USN8X9cEdIH7+mKXOfazEA9
	Y9GtKzySD04kKmV7nibWHpGwMu08GPRi/6l6gNI1Q7bYfl83ZGAbZr2ThVvi3zRuf4P7hDK9UxW
	CnhEYsMv2T+4GWvCis+v94OtlJ+KWTW5yJ+jY6NW41UNgDj4YMOPY1fuPBV12Wplb9szQyCMr0R
	LJMcuA22aufrxX/j+uFpRNotPcf3zMM2NBpjf4UznGG7Xwk6rmFMHKr8Ol33YhB/Ju5CF8oA3yo
	YXGNd/RJVeN8Wldu5dJoo8gmKYQ29UR0Qv0V/1a+1KBFgA9nVN13gGz/LMisS9bIzy3zNMWr
X-Received: by 2002:a05:690c:38a:b0:79a:5fb9:62ad with SMTP id
 00721157ae682-7c95c2f76d2mr234627707b3.43.1779210435344; Tue, 19 May 2026
 10:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com> <20260505181523.49a3d85c@fedora>
 <afxVIuVVPisBQ9p_@e129842.arm.com> <20260507135356.5428d50d@fedora>
 <agMvb_jeRsO7tSS-@e142607> <20260512161111.0cb7000e@fedora>
 <agNJasayW8VCHTiU@e142607> <CAPaKu7QC7FdjL6m_OSb+E5aYKs6bmT-9DAHc5PC=XctCmRph2Q@mail.gmail.com>
 <20260518091650.5a7a4f4a@fedora> <CAPaKu7R9ET767qc3eppBUfG2RAeyrg7E-gE0turgp-u_FU4+Vg@mail.gmail.com>
 <20260519093955.448ff899@fedora> <8f0b1750-a853-4895-9672-73a75f6dbd84@arm.com>
In-Reply-To: <8f0b1750-a853-4895-9672-73a75f6dbd84@arm.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Tue, 19 May 2026 10:07:02 -0700
X-Gm-Features: AVHnY4KPVoHRfmRDqkq-IVKhKn_YZaF7RwhfpWAK0UOEyzKcth-8E_oZBwz-wzI
Message-ID: <CAPaKu7T7JZRmsS+D_3zFZtyhJk9mNXjL=xpAQ-UNGbm0vztyRg@mail.gmail.com>
To: Ketil Johnsen <ketil.johnsen@arm.com>
X-Spamd-Bar: ----
Message-ID-Hash: 6QHQ3VXXK6JK4ZAKM7W2BXGHJH6SZRP2
X-Message-ID-Hash: 6QHQ3VXXK6JK4ZAKM7W2BXGHJH6SZRP2
X-MailFrom: olvaffe@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Boris Brezillon <boris.brezillon@collabora.com>, Liviu Dudau <liviu.dudau@arm.com>, =?UTF-8?Q?Marcin_=C5=9Alusarz?= <marcin.slusarz@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.ker
 nel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6QHQ3VXXK6JK4ZAKM7W2BXGHJH6SZRP2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,vger.ker,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olvaffe@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 4B994582D98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTo0OeKAr0FNIEtldGlsIEpvaG5zZW4gPGtldGlsLmpv
aG5zZW5AYXJtLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDE5LzA1LzIwMjYgMDk6MzksIEJvcmlzIEJy
ZXppbGxvbiB3cm90ZToNCj4gPiBPbiBNb24sIDE4IE1heSAyMDI2IDE3OjM2OjQwIC0wNzAwDQo+
ID4gQ2hpYS1JIFd1IDxvbHZhZmZlQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPj4gT24gTW9u
LCBNYXkgMTgsIDIwMjYgYXQgMTI6MTbigK9BTSBCb3JpcyBCcmV6aWxsb24NCj4gPj4gPGJvcmlz
LmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4gPj4+DQo+ID4+PiBPbiBXZWQsIDEz
IE1heSAyMDI2IDEyOjMxOjMyIC0wNzAwDQo+ID4+PiBDaGlhLUkgV3UgPG9sdmFmZmVAZ21haWwu
Y29tPiB3cm90ZToNCj4gPj4+DQo+ID4+Pj4gT24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgODozOeKA
r0FNIExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPiB3cm90ZToNCj4gPj4+Pj4NCj4g
Pj4+Pj4gT24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgMDQ6MTE6MTFQTSArMDIwMCwgQm9yaXMgQnJl
emlsbG9uIHdyb3RlOg0KPiA+Pj4+Pj4gT24gVHVlLCAxMiBNYXkgMjAyNiAxNDo0NzoyNyArMDEw
MA0KPiA+Pj4+Pj4gTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+IHdyb3RlOg0KPiA+
Pj4+Pj4NCj4gPj4+Pj4+PiBPbiBUaHUsIE1heSAwNywgMjAyNiBhdCAwMTo1Mzo1NlBNICswMjAw
LCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6DQo+ID4+Pj4+Pj4+IE9uIFRodSwgNyBNYXkgMjAyNiAx
MTowMjoyNiArMDIwMA0KPiA+Pj4+Pj4+PiBNYXJjaW4gxZpsdXNhcnogPG1hcmNpbi5zbHVzYXJ6
QGFybS5jb20+IHdyb3RlOg0KPiA+Pj4+Pj4+Pg0KPiA+Pj4+Pj4+Pj4gT24gVHVlLCBNYXkgMDUs
IDIwMjYgYXQgMDY6MTU6MjNQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiA+Pj4+
Pj4+Pj4+PiBAQCAtMjc3LDkgKzI4NiwyMSBAQCBpbnQgcGFudGhvcl9kZXZpY2VfaW5pdChzdHJ1
Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2KQ0KPiA+Pj4+Pj4+Pj4+PiAgICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gcmV0Ow0KPiA+Pj4+Pj4+Pj4+PiAgICAgIH0NCj4gPj4+Pj4+Pj4+Pj4NCj4g
Pj4+Pj4+Pj4+Pj4gKyAgIC8qIElmIGEgcHJvdGVjdGVkIGhlYXAgbmFtZSBpcyBzcGVjaWZpZWQg
YnV0IG5vdCBmb3VuZCwgZGVmZXIgdGhlIHByb2JlIHVudGlsIGNyZWF0ZWQgKi8NCj4gPj4+Pj4+
Pj4+Pj4gKyAgIGlmIChwcm90ZWN0ZWRfaGVhcF9uYW1lICYmIHN0cmxlbihwcm90ZWN0ZWRfaGVh
cF9uYW1lKSkgew0KPiA+Pj4+Pj4+Pj4+DQo+ID4+Pj4+Pj4+Pj4gRG8gd2UgcmVhbGx5IG5lZWQg
dGhpcyBzdHJsZW4oKSA+IDA/IFdvbid0IGRtYV9oZWFwX2ZpbmQoKSBmYWlsIGlzIHRoZQ0KPiA+
Pj4+Pj4+Pj4+IG5hbWUgaXMgIiIgYWxyZWFkeT8NCj4gPj4+Pj4+Pj4+DQo+ID4+Pj4+Pj4+PiBJ
ZiBkbWFfaGVhcF9maW5kKCkgd2lsbCBmYWlsLCB0aGVuIHRoZSB3aG9sZSBwcm9iZSB3aXRoIGZh
aWwgdG9vLg0KPiA+Pj4+Pj4+Pj4gVGhpcyBjaGVjayBwcmV2ZW50cyB0aGF0Lg0KPiA+Pj4+Pj4+
Pg0KPiA+Pj4+Pj4+PiBZZWFoLCB0aGF0J3MgYWxzbyBhIHF1ZXN0aW9uYWJsZSBkZXNpZ24gY2hv
aWNlLiBJIG1lYW4sIHdlIGNhbg0KPiA+Pj4+Pj4+PiBjdXJyZW50bHkgcHJvYmUgYW5kIGJvb3Qg
dGhlIEZXIGV2ZW4gdGhvdWdoIHdlIG5ldmVyIHNldHVwIHRoZQ0KPiA+Pj4+Pj4+PiBwcm90ZWN0
ZWQgRlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2UgZGVmZXIgdGhlIHByb2JlIGhlcmU/IENh
bid0IHdlDQo+ID4+Pj4+Pj4+IGp1c3QgcmV0cnkgdGhlIG5leHQgdGltZSBhIGdyb3VwIHdpdGgg
dGhlIHByb3RlY3RlZCBiaXQgaXMgY3JlYXRlZCBhbmQNCj4gPj4+Pj4+Pj4gZmFpbCBpZiB3ZSBj
YW4gZmluZCBhIHByb3RlY3RlZCBoZWFwPw0KPiA+Pj4+Pj4+DQo+ID4+Pj4+Pj4gVGhlIHByb2Js
ZW0gd2UgaGF2ZSB3aXRoIHRoZSBjdXJyZW50IGZpcm13YXJlIGlzIHRoYXQgaXQgZG9lcyBhIG51
bWJlciBvZiBzZXR1cCBzdGVwcyBhdCAiYm9vdCINCj4gPj4+Pj4+PiB0aW1lIG9ubHkuIE9uZSBv
ZiB0aGUgc3RlcHMgaXMgcHJlcGFyaW5nIGl0cyBpbnRlcm5hbCBzdHJ1Y3R1cmVzIGZvciB3aGVu
IGl0IGVudGVycyBwcm90ZWN0ZWQNCj4gPj4+Pj4+PiBtb2RlIGFuZCBpdCBzdG9yZXMgdGhlbSBp
biB0aGUgYnVmZmVyIHBhc3NlZCBpbiBhdCBmaXJtd2FyZSBsb2FkaW5nLiBXZSBjYW5ub3QgbGF0
ZXIgcnVuIHRoZQ0KPiA+Pj4+Pj4+IHByb2Nlc3Mgd2hlbiB3ZSBoYXZlIGEgZ3JvdXAgd2l0aCBw
cm90ZWN0ZWQgbW9kZSBzZXQuDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gTm8sIGJ1dCB3ZSBjYW4gZm9y
Y2UgYSBmdWxsL3Nsb3cgcmVzZXQgYW5kIGhhdmUgdGhhdCB0aGluZw0KPiA+Pj4+Pj4gcmUtaW5p
dGlhbGl6ZWQsIGNhbid0IHdlPyBJIG1lYW4sIHRoYXQncyBiYXNpY2FsbHkgd2hhdCB3ZSBkbyB3
aGVuIGENCj4gPj4+Pj4+IGZhc3QgcmVzZXQgZmFpbHM6IHdlIHJlLWluaXRpYWxpemUgYWxsIHRo
ZSBzZWN0aW9ucyBhbmQgcmVzZXQgYWdhaW4sIGF0DQo+ID4+Pj4+PiB3aGljaCBwb2ludCB0aGUg
Rlcgc2hvdWxkIHN0YXJ0IGZyb20gYSBmcmVzaCBzdGF0ZSwgYW5kIGJlIGFibGUgdG8NCj4gPj4+
Pj4+IHByb3Blcmx5IGluaXRpYWxpemUgdGhlIHByb3RlY3RlZC1yZWxhdGVkIHN0dWZmIGlmIHBy
b3RlY3RlZCBzZWN0aW9ucw0KPiA+Pj4+Pj4gYXJlIHBvcHVsYXRlZC4gQW0gSSBtaXNzaW5nIHNv
bWV0aGluZz8NCj4gPj4+Pj4NCj4gPj4+Pj4gUmlnaHQsIHdlIGNhbiBkbyB0aGF0LiBGb3Igc29t
ZSByZWFzb24gSSBrZWVwIGFzc29jaWF0aW5nIHRoZSByZXNldCB3aXRoIHRoZQ0KPiA+Pj4+PiBl
cnJvciBoYW5kbGluZyBhbmQgbm90IHdpdGggIm5vcm1hbCIgb3BlcmF0aW9ucy4NCj4gPj4+PiBJ
IGtpbmQgb2YgaG9wZSB3ZSBlbmQgdXAgd2l0aCBlaXRoZXINCj4gPj4+Pg0KPiA+Pj4+ICAgLSBw
YW50aG9yIGtub3dzIHRoZSBleGFjdCBoZWFwIHRvIHVzZSBhbmQgZmFpbHMgd2l0aCBFUFJPQkVf
REVGRVIgaWYNCj4gPj4+PiB0aGUgaGVhcCBpcyBtaXNzaW5nLCBvcg0KPiA+Pj4+ICAgLSBwYW50
aG9yIGdldHMgYSBkbWEtYnVmIGZyb20gdXNlcnNwYWNlIGFuZCBkb2VzIHRoZSBmdWxsIHJlc2V0
DQo+ID4+Pj4gICAgIC0gdXNlcnNwYWNlIGFsc28gbmVlZHMgdG8gcHJvdmlkZSBhIGRtYS1idWYg
Zm9yIGVhY2ggcHJvdGVjdGVkDQo+ID4+Pj4gZ3JvdXAgZm9yIHRoZSBzdXNwZW5kIGJ1ZmZlcg0K
PiA+Pj4+DQo+ID4+Pj4gdGhhbiBzb21ldGhpbmcgaW4tYmV0d2Vlbi4gVGhlIGxhdHRlciBpcyBt
b3JlIGFkLWhvYyBhbmQgYmFzaWNhbGx5DQo+ID4+Pj4ga2lja3MgdGhlIGlzc3VlIHRvIHRoZSB1
c2Vyc3BhY2UuDQo+ID4+Pg0KPiA+Pj4gSW5kZWVkLCB0aGUgc2Vjb25kIG9wdGlvbiBpcyBtb3Jl
IGFkLWhvYywgYnV0IHdoZW4geW91IHRoaW5rIGFib3V0IGl0LA0KPiA+Pj4gdXNlcnNwYWNlIGhh
cyB0byBoYXZlIHRoaXMga25vd2xlZGdlLCBiZWNhdXNlIGl0IG5lZWRzIHRvIGtub3cgdGhlDQo+
ID4+PiBkbWEtaGVhcCB0byB1c2UgZm9yIGJ1ZmZlciBhbGxvY2F0aW9uIHRoYXQgY3Jvc3MgYSBk
ZXZpY2UgYm91bmRhcnkNCj4gPj4+IGFueXdheS4gVGhpbmsgYWJvdXQgZnJhbWVzIHByb2R1Y2Vk
IGJ5IGEgdmlkZW8gZGVjb2RlciwgYW5kIGNvbXBvc2l0ZWQNCj4gPj4+IGJ5IHRoZSBHUFUgaW50
byBhIHByb3RlY3RlZCBzY2Fub3V0IGJ1ZmZlciB0aGF0J3MgcGFzc2VkIHRvIHRoZSBLTVMNCj4g
Pj4+IGRldmljZS4gV2h5IHdvdWxkIHRoZSBHUFUgZHJpdmVyIGJlIHNvdXJjZSBvZiB0cnV0aCB3
aGVuIGl0IGNvbWVzIHRvDQo+ID4+PiBjaG9vc2luZyB0aGUgaGVhcCB0byB1c2UgdG8gYWxsb2Nh
dGUgcHJvdGVjdGVkIGJ1ZmZlcnMgZm9yIHRoZSB2aWRlbw0KPiA+Pj4gZGVjb2RlciBvciB0aG9z
ZSB1c2VkIGZvciB0aGUgZGlzcGxheT8NCj4gPj4gSSBkb24ndCB0aGluayB0aGUgR1BVIGRyaXZl
ciBpcyBldmVyIHRoZSBzb3VyY2Ugb2YgdHJ1dGguIElmIHRoZQ0KPiA+PiBzeXN0ZW0gaW50ZWdy
YXRvciB3YW50cyB0byBzcGVjaWZ5IHRoZSBzb3VyY2Ugb2YgdHJ1dGggKFNvVCkgZnJvbQ0KPiA+
PiBrZXJuZWwgc3BhY2UsIHRoZXkgc2hvdWxkIHVzZSB0aGUgZGV2aWNlIHRyZWUgKG9yIG1vZHVs
ZSBwYXJhbXMgLw0KPiA+PiBjb25maWcgb3B0aW9ucykuIElmIHRoZXkgd2FudCB0byBzcGVjaWZ5
IHRoZSBTb1QgaW4gdXNlcnNwYWNlLCB0aGVuIHdlDQo+ID4+IGRvbid0IHJlYWxseSBjYXJlIGhv
dyBpdCBpcyBkb25lIG90aGVyIHRoYW4gcHJvdmlkaW5nIGFuIGlvY3RsLg0KPiA+PiBQYW50aG9y
IGlzIGFsd2F5cyBvbiB0aGUgcmVjZWl2aW5nIGVuZC4NCj4gPg0KPiA+IE9rYXksIHdlJ3JlIG9u
IHRoZSBzYW1lIHBhZ2UgdGhlbi4NCj4gPg0KPiA+Pg0KPiA+PiBJZiB3ZSBkb24ndCB3YW50IHRv
IGRlbGF5IHRoaXMgZnVuY3Rpb25hbGl0eSwgYnV0IGl0IHRha2VzIHRpbWUgdG8NCj4gPj4gY29u
dmVyZ2Ugb24gU29ULCBtYXliZSBhIHNvbHV0aW9uIHRoYXQgaXMgbm90IGEgbG9uZy10ZXJtIHBy
b21pc2UgY2FuDQo+ID4+IHdvcms/IE9mIHRoZSBvcHRpb25zIG9uIHRoZSB0YWJsZSAoZHQsIG1v
ZHVsZSBwYXJhbXMsIGtjb25maWcgb3B0aW9ucywNCj4gPj4gaW9jdGxzKSwgYSBrY29uZmlnIG9w
dGlvbiwgcG90ZW50aWFsbHkgbWFya2VkIGFzIGV4cGVyaW1lbnRhbCwgc2VlbXMNCj4gPj4gbGlr
ZSBhIGdvb2QgY2FuZGlkYXRlLg0KPiA+DQo+ID4gSWYgUGFudGhvciBpcyBvbmx5IGEgY29uc3Vt
ZXIsIEkgYWN0dWFsbHkgdGhpbmsgaXQnZCBiZSBlYXNpZXIgdG8ganVzdA0KPiA+IGxldCB1c2Vy
c3BhY2UgcGFzcyB0aGUgcHJvdGVjdGVkIEZXIHNlY3Rpb24gYXMgYW4gaW1wb3J0ZWQgYnVmZmVy
DQo+ID4gdGhyb3VnaCBhbiBpb2N0bCBmb3Igbm93LiBJdCBtZWFucyB3ZSBkb24ndCBuZWVkIGFu
eSBvZiB0aGUNCj4gPiBtb2RpZmljYXRpb25zIHRvIHRoZSBkbWFfaGVhcCBBUEkgaW4gdGhpcyBz
ZXJpZXMsIGFuZCB1c2Vyc3BhY2UgaXMgZnJlZQ0KPiA+IHRvIGNob29zZSBpdHMgU29UIChlZnVz
ZSwgRFQsIC4uLikgYW5kIHBhc3MgdGhlIGluZm8gYmFjayB0byBtZXNhL0dCTQ0KPiA+IHNvbWVo
b3cgKGVudnZhciwgZHJpY29uZiwgLi4uKS4gVGhlIG9ubHkgdGhpbmcgd2UgbmVlZCB0byBlbnN1
cmUgaXMgaWYNCj4gPiBsYXp5IHByb3RlY3RlZCBGVyBzZWN0aW9uIGFsbG9jYXRpb24gaXMgZ29p
bmcgdG8gd29yaywgYnV0IGdpdmVuIHRoZQ0KPiA+IGN1cnJlbnQgY29kZSBwdXJlbHkgYW5kIHNp
bXBseSBpZ25vcmVzIHRob3NlIHNlY3Rpb25zLCBhbmQgdGhlIEZXIGlzDQo+ID4gc3RpbGwgYWJs
ZSB0byBib290IGFuZCBhY3QgcHJvcGVybHkgKGF0IGxlYXN0IG9uIHYxMC12MTMpLCBJJ20gcHJl
dHR5DQo+ID4gY29uZmlkZW50IHRoaXMgaXMgb2theSwgdW5sZXNzIHRoZXJlJ3Mgc29tZSB0cmlj
ayB0aGUgTUNVIGNhbiBkbyB0bw0KPiA+IGRldGVjdCB0aGF0IHRoZSBwcm90ZWN0ZWQgc2VjdGlv
biBpc24ndCBtYXBwZWQgKHdoaWNoIEkgZG91YnQsIGJlY2F1c2UNCj4gPiB0aGUgTUNVIGRvZXNu
J3Qga25vdyBpdCBsaXZlcyBiZWhpbmQgYW4gTU1VKS4NCkkgc2V0IHVwIE1NVSB0byBtYXAgbm9u
LXByb3RlY3RlZCBtZW1vcnkgdG8gdGhlIHByb3RlY3RlZCBzZWN0aW9uIHRoZQ0Kb3RoZXIgZGF5
LiBUaGUgRlcgc3RpbGwgYm9vdGVkIGZpbmUuIEkgZGlkbid0IGdldCBhY2Nlc3MgdmlvbGF0aW9u
DQp1bnRpbCB0aGUgRlcgZXhlY3V0ZWQgUFJPVF9SRUdJT04gYW5kIHBhbnRob3IgcmVxdWVzdGVk
DQpHTEJfUFJPVE1fRU5URVIgaW4gcmVzcG9uc2UuDQoNClRoaXMgd2FzIG9uIHYxMywgYnV0IEkg
YWxzbyBkb3VidCBpdCB3aWxsIGJlY29tZSBhbiBpc3N1ZS4gQ2FuIEFSTSBoZWxwIGNsYXJpZnk/
DQoNCj4gPg0KPiA+IE9mIGNvdXJzZSwgb25jZSB3ZSBoYXZlIGEgY29uc2Vuc3VzIG9uIGhvdyB0
byBkZXNjcmliZSB0aGlzIGluIHRoZSBEVCwNCj4gPiB3ZSBjYW4gc3dpdGNoIFBhbnRob3Igb3Zl
ciB0byAicHJvdGVjdGVkIGRtYV9oZWFwIHNlbGVjdGlvbiB0aHJvdWdoIERUIiwNCj4gPiBhbmQg
cmVmbGVjdCB0aGF0IHRocm91Z2ggdGhlIGlvY3RsIHRoYXQgZXhwb3NlcyB3aGV0aGVyIHByb3Rl
Y3RlZA0KPiA+IHN1cHBvcnQgaXMgcmVhZHkgb3Igbm90ICh3b3VsZCBiZSBhIERFVl9RVUVSWSks
IHN1Y2ggdGhhdCB1c2Vyc3BhY2UgY2FuDQo+ID4gc2tpcCB0aGlzICJQUk9UTSBpbml0aWFsaXph
dGlvbiIgc3RlcC4NCj4gPg0KPiA+IFdlJ3JlIHRhbGtpbmcgYWJvdXQgYW4gZXh0cmEgaW9jdGwg
dG8gc2V0IHRob3NlIGJ1ZmZlcnMsIGFuZCBhDQo+ID4gREVWX1FVRVJZIHRvIHF1ZXJ5IHRoZSBz
dGF0ZSAocmVhZHkgb3Igbm90KSwgdGhlIHNpemUgb2YgdGhlIGdsb2JhbA0KPiA+IHByb3RlY3Rl
ZCBidWZmZXIgKHByb3RlY3RlZCBGVyBzZWN0aW9uKSBhbmQgdGhlIHNpemUgb2YgdGhlIHByb3Rl
Y3RlZA0KPiA+IHN1c3BlbmQgYnVmZmVyLiBUaGUgcHJvdGVjdGVkIHN1c3BlbmQgYnVmZmVyIHdv
dWxkIGJlIGFsbG9jYXRlZCBhbmQNCj4gPiBwYXNzZWQgYXQgZ3JvdXAgY3JlYXRpb24gdGltZSAo
ZXh0cmEgYXJnIHBhc3NlZCB0byB0aGUgZXhpc3RpbmcNCj4gPiBHUk9VUF9DUkVBVEUgaW9jdGwp
LiBTbywgb3ZlcmFsbCwgSSBkb24ndCBjb25zaWRlciBpdCBhIGh1Z2UgbGlhYmlsaXR5DQo+ID4g
aW4gdGVybSBvZiBtYWludGVuYW5jZSBjb3N0Lg0KPg0KPiBJZiB3ZSBjYW4gYXZvaWQgdGhlIGRt
YS1oZWFwIGNoYW5nZXMsIHRoZW4gdGhhdCB3b3VsZCBzdXJlbHkgaGVscCENCj4gSSBjYW4gdHJ5
IHRvIGltcGxlbWVudCB0aGlzIGluIHRoZSBuZXh0IHZlcnNpb24gdW5sZXNzIHNvbWVvbmUgZmlu
ZHMgYQ0KPiByZWFzb24gd2h5IGl0IGlzIGEgYmFkIGlkZWEuDQpZZWFoLCB0aGF0IHNvdW5kcyBn
b29kIHRvIG1lIHRvby4NCg0KV2lsbCB0aGUgZXh0cmEgaW9jdGwgcmVxdWlyZSByb290PyBPbiBh
IHN5c3RlbSB3aXRoIHRydWUgcHJvdGVjdGVkDQptZW1vcnksIHRoZSBGVyBjYW5ub3Qgd3JpdGUg
dG8gbm9uLXByb3RlY3RlZCBtZW1vcnkuIEl0IHNlZW1zIG9rIHRvDQphbGxvdyBhbnkgY2xpZW50
IHRvIG1ha2UgdGhlIGlvY3RsIGNhbGwuIEJ1dCBvbiBzeXN0ZW1zIHdpdGhvdXQgdHJ1ZQ0KcHJv
dGVjdGVkIG1lbW9yeSwgaXQgY2FuIGJlIHByb2JsZW1hdGljLg0KDQo+DQo+ID4+Pj4gRm9yIHRo
ZSBmb3JtZXIsIGV4cHJlc3NpbmcgdGhlIHJlbGF0aW9uIGluIERUIHNlZW1zIHRvIGJlIHRoZSBi
ZXN0LA0KPiA+Pj4+IGJ1dCBvbmx5IGlmIHBvc3NpYmxlIDotKS4gT3RoZXJ3aXNlLCBhIGtjb25m
aWcgb3B0aW9uIChpbnN0ZWFkIG9mDQo+ID4+Pj4gbW9kdWxlIHBhcmFtKSBzaG91bGQgYmUgZWFz
aWVyIHRvIHdvcmsgd2l0aC4NCj4gPj4+Pg0KPiA+Pj4+IExvb2tpbmcgYXQgdGhlIHVzZXJzcGFj
ZSBpbXBsZW1lbnRhdGlvbiwgY2FuIHdlIGFsc28gaGF2ZSBhbiBwYW50aG9yDQo+ID4+Pj4gaW9j
dGwgdG8gcmV0dXJuIHRoZSBoZWFwIHRvIHVzZXJzcGFjZT8NCj4gPj4+DQo+ID4+PiBZZXMsIGl0
J3Mgc29tZXRoaW5nIHdlIGNhbiBhZGQsIGJ1dCBhZ2FpbiwgSSdtIHF1ZXN0aW9uaW5nIHRoZQ0K
PiA+Pj4gdXNlZnVsbmVzcyBvZiB0aGlzOiBob3cgY2FuIHdlIGVuc3VyZSB0aGUgaGVhcCB1c2Vk
IGJ5IHBhbnRob3IgdG8NCj4gPj4+IGFsbG9jYXRlIGl0cyBwcm90ZWN0ZWQgRlcgYnVmZmVycyBp
cyBzdWl0YWJsZSBmb3Igc2Nhbm91dCBidWZmZXJzDQo+ID4+PiAoYnVmZmVycyB0aGF0IGNhbiBi
ZSB1c2VkIGJ5IGRpc3BsYXkgZHJpdmVycykuIFRoZXJlIG5lZWRzIHRvIGJlIGEgZ2x1ZQ0KPiA+
Pj4gbGVhdmluZyBpbiB1c2Vyc2xhbmQgYW5kIHRha2luZyB0aGUgZGVjaXNpb24sIGFuZCBJJ20g
bm90IHRvbyBzdXJlDQo+ID4+PiB0cnVzdGluZyBhbnkgb2YgdGhlIGNvbXBvbmVudCBpbiB0aGUg
Y2hhaW4gKHZkZWMsIGdwdSwgZGlzcGxheSkgaXMgdGhlDQo+ID4+PiByaWdodCB0aGluZyB0byBk
by4NCj4gPj4gVGhlIGhlYXAgcmV0dXJuZWQgYnkgcGFudGhvciBpcyBvbmx5IGZvciBwYW5mcm9z
dC9wYW52ay4gSXQgc2F5cw0KPiA+PiBub3RoaW5nIGFib3V0IGNvbXBhdGliaWxpdHkgd2l0aCBv
dGhlciBjb21wb25lbnRzIG9uIHRoZSBzeXN0ZW0uDQo+ID4NCj4gPiBPa2F5LCBpZiBpdCdzIHVz
ZWQgb25seSBmb3IgaW50ZXJuYWwgYnVmZmVycywgSSBndWVzcyB0aGF0J3MgZmluZS4NCj4NCj4g
LS0NCj4gS2V0aWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
