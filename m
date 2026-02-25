Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNHkE8REn2m5ZgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:51:48 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E312219C731
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:51:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C740B401AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 18:51:46 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id 57F8B401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 18:51:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Xm0Pvkad;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=jstultz@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b7cf4a975d2so1486766b.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 10:51:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772045503; cv=none;
        d=google.com; s=arc-20240605;
        b=jLmc6IIOjv+qCzKUxyGA1HJAbEqKwBXlnRr7wQ82pP8yvY5zJJ2Vt2lJc8BsEp57GT
         ctCXBksmdey/X7cHI+gCz4hVsWK7dOWbeNiVui6in5J/lZDnWVWESsHY4foaMXaAoC9m
         vW0oukXl3CLMbHz8vvq1j4Fn7uQJRQ61g7Msdc5dPqMdeshAW8mEFLBi7S+rIh/TK1RL
         9Fut+m8RrAFaE7Qg1SRW7qnJ2Zil1vdWdfaxNGZJsqKs21TH6NzBFwumd3DSFflswEPk
         ePE+QTMohnc9zfooUlg7hwtmTUgHIHmTNGcfxdSShAVBiiP+hYiHkkG4VvzQ2/eKcbGq
         37qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4oh/ifwivL8l9J8VT3JA58Q6ouuCYd8eO2HrHQHPvGw=;
        fh=ecPWxKlkdVbDhiVwk4/L4soaeOD1GNe51wAty0kYSTo=;
        b=gfP2TIeAi5Q4JLIOYO2RRzHg/nJeEFCnPhvwUnRBWjW/v0g2Mh6ho6FSDmMclM8Ecx
         maPUY/gVg7egCcMQn6luvF//hvC+PcM7rbMy+mdNZCY+4vAchi17lavwNy9Krn8vaDlf
         uvffscIy3vtcCKiLvJnY/L2F8KPrRpoZXejwS4KKWrsZzpRyvhoPEClePzWYk1yvCD+P
         0FBJ7NQ6GBdGBUxXdQ32E3x/DSjUEC1ykUhfQJo3/UVt1R3QzkyRhkNS68TzeCDoPtAf
         rRaF9cyKbt0Ivc3qGtoiIlf0oc1OIX92XQf2PCCCkImWyi/vXkK/3B0uLWKg384CY0b4
         bHKA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772045503; x=1772650303; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4oh/ifwivL8l9J8VT3JA58Q6ouuCYd8eO2HrHQHPvGw=;
        b=Xm0PvkadKZbwNbgHLtJqBDO/jgipB7jFLVHqU2N5IbbI3dIkFy2iVrL41T2hp3KveG
         BcsldZHC2BQ01a9crpMr7EthGcLm0mA6MTzx7X05sanDYFgImHf6XpVpqgyfYq+il+kQ
         qDdkV3vjDyRgVXRVjK91xP4kNFpYroww1/iwOK/rWT2SMaOQXHKe1I3WMmkr7Hw5nKlm
         Ip0RojDq+FQmLzN9ZWvDVuiNvI4K5HGOLamPwwa33oAA/ndshugNwvNlR2Xu+lg+V6JC
         DfKl6l/Hl3Kjt2oKhDTA6bmXoRu/tHKN4YOdHE79Fi85FKUyMk3KreC2bYR/sWBwbFs5
         vbxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772045503; x=1772650303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4oh/ifwivL8l9J8VT3JA58Q6ouuCYd8eO2HrHQHPvGw=;
        b=W4TDGtWeuoCVLivsTKj6OQpmMqaaE+VDh82L8YOyW+J5q6hRxA2OJOQIpcvq0bWoMb
         t3MJcXSh3sHWVoZBK6jq5qh/bn7a6b2V8BDBr3IHnqkbYq7QRobwDo1I9zYA63qmc6hV
         gSUwVwQU9CO99nXEW0NQEyT8KFqI5ae0sqF9yAXkwyH8B8bgGmBB0oqGSU5wjkfIcoIB
         5Kh2iC77tipLs/npQtABjqKH8pwjDCWBEuIXEBsAyURmgzlny9UmiavrJftQSRpurFpB
         oppDrhlIr4n4bSAWvRF07lIJT+ARIr7vOmfHOU3QQmdHfspLp4uizU7ySB7UI/Web4Jc
         B7lg==
X-Forwarded-Encrypted: i=1; AJvYcCVJCvtY4E8kejZz2xhBoE4VkgYG7jva+89jQrRnuATgaQz8PEhkP2yOD901NMmh+Yt3ipPjY8JQjR1jJNR/@lists.linaro.org
X-Gm-Message-State: AOJu0YzKMeJHsEqs93MJdl0eWj6zdBouJ8Hy/LbvAZ5nbcmcU8rU/dX5
	a4NhayFQyZEMFz8uX4GmfIGTcSHGeNvKg53LuTndCmF0RHZsDoItAaGO+Ex6rTBDL/lYuZ5iB3b
	I2dZOBYMQCMeJtOSXCfm1mb5uaQ85tIR3rPmgCiM=
X-Gm-Gg: ATEYQzw8DUfOAq4H65NkjA3d96dKHFq1PtsL//XMdZdE3tuDwTVBIj5b7K8eegeLSGE
	502DSvNXoX6tDldufAPULssOku0aEKCvaalk8dvTXnQPGRXP24TC1CMZYgY3otfO+FuS5mF8llq
	+LV60WMawzo1ChilLRMEQAOPJz3jivlNSfBk7RCNLt0jQp0NOKglfAKHUj4gASSZywfKuLvHG39
	2ZbrJqCkuB/HTEfw5dnsPTl/jeaxP8Wi7gyvmVJay5RdMfI9voxNpZXz+n2Z/L+91QzFt0jdYsI
	JhEBtIO0LcALA3o3aEbWNrMtD9xRwldCIigx
X-Received: by 2002:a17:907:6094:b0:b93:3792:4b03 with SMTP id
 a640c23a62f3a-b933792588fmr385769366b.32.1772045502705; Wed, 25 Feb 2026
 10:51:42 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
From: John Stultz <jstultz@google.com>
Date: Wed, 25 Feb 2026 10:51:30 -0800
X-Gm-Features: AaiRm510JicR5yB6-6HzIZrjZoL6Jbi8o9bjBsqrkrZBCAWaavoCU9peMfkjjyM
Message-ID: <CANDhNCqk9Uk4aXHhUsL4hR1GHNmWZnH3C9Np-A02wdi+J3D7tA@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: XTXMGUKUQJGUTT5S3IMBZBEQWADMDODJ
X-Message-ID-Hash: XTXMGUKUQJGUTT5S3IMBZBEQWADMDODJ
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XTXMGUKUQJGUTT5S3IMBZBEQWADMDODJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.974];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: E312219C731
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgODo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSByZWNlbnQgaW50cm9kdWN0aW9uIG9mIGhlYXBz
IGluIHRoZSBvcHRlZSBkcml2ZXIgWzFdIG1hZGUgcG9zc2libGUNCj4gdGhlIGNyZWF0aW9uIG9m
IGhlYXBzIGFzIG1vZHVsZXMuDQo+DQo+IEl0J3MgZ2VuZXJhbGx5IGEgZ29vZCBpZGVhIGlmIHBv
c3NpYmxlLCBpbmNsdWRpbmcgZm9yIHRoZSBhbHJlYWR5DQo+IGV4aXN0aW5nIHN5c3RlbSBhbmQg
Q01BIGhlYXBzLg0KPg0KPiBUaGUgc3lzdGVtIG9uZSBpcyBwcmV0dHkgdHJpdmlhbCwgdGhlIENN
QSBvbmUgaXMgYSBiaXQgbW9yZSBpbnZvbHZlZCwNCj4gZXNwZWNpYWxseSBzaW5jZSB3ZSBoYXZl
IGEgY2FsbCBmcm9tIGtlcm5lbC9kbWEvY29udGlndW91cy5jIHRvIHRoZSBDTUENCj4gaGVhcCBj
b2RlLiBUaGlzIHdhcyBzb2x2ZWQgYnkgdHVybmluZyB0aGUgbG9naWMgYXJvdW5kIGFuZCBtYWtp
bmcgdGhlDQo+IENNQSBoZWFwIGNhbGwgaW50byB0aGUgY29udGlndW91cyBETUEgY29kZS4NCj4N
Cg0KU28gaGVhcHMtYXMtbW9kdWxlcyBpcyBjb21tb24gaW4gdGhlIEFuZHJvaWQga2VybmVscywg
YW5kIHdhcw0KYXR0ZW1wdGVkIHRvIGJlIHVwc3RyZWFtZWQgbG9uZyBhZ286DQogIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTEwMjUyMzQ4MzQuMjgyMTQtMS1qb2huLnN0dWx0ekBs
aW5hcm8ub3JnLw0KDQpBbmQgaXQgZ290IGEgZmFpcmx5IGNoaWxseSByZWNlcHRpb24sIGJ1dCBt
YXliZSBoYXZpbmcgdGhlIGFkZGl0aW9uYWwNCm9wdGVlIGhlYXAgKGFzIHdlbGwgYXMgb3RoZXIg
cHJvcG9zZWQgaGVhcHMpIG1pZ2h0IHN3YXkgZm9sa3Mgb24gdGhpcw0Kbm93Lg0KDQpUaGVyZSBp
cyBhbHNvIHRoZSBrcmVmIGJpdHMgeW91IG1pZ2h0IG5lZWQgKHdoaWNoIEFuZHJvaWQgc3RpbGwg
Y2Fycmllcyk6DQogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDA3MjUwMzI2MzMu
MTI1MDA2LTEtam9obi5zdHVsdHpAbGluYXJvLm9yZy8NCg0KdGhhbmtzDQotam9obg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
