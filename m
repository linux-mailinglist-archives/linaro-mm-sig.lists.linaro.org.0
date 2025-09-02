Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD1AB41016
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 00:38:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7C7C454EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 22:38:06 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by lists.linaro.org (Postfix) with ESMTPS id D1AA4443B9
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 22:37:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=l9hK70FV;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.51 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-55f7a34fb35so2259644e87.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 15:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1756852678; x=1757457478; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2Z2q0BkPqIY+E04bVXl2gU0zLZQjMNqg1qcdhYoTFM=;
        b=l9hK70FVIVeI2K/k9v+UkQXmYYVsok0f7v8IBridIIbMW7ssu7TmRjWVD5DnHLsXwS
         ACWilkQUhjqxn9H9WbE0+xk5nmxYkpDPxDOqYdX/PlIXQq8ujqhdFF40YZgCDGwTlIc7
         TdQ0TVW0B/D+qrVzAjP+UNclYql6sE0HwFYTqcxFpLqBll8zaPhRgMb6gv0EJBEanQR/
         HaKSGWT9dsMgKgStkcNUkU+BL3FzaqV6VtCl32cTfi/eZUiUH3Jqu+xa1JOjVzJm6Qs+
         f5O6VEZdwFt474JsmNP/Uh467Plcj3QfeaVEadK4nQm0ZGxqM1VmIPPkmpwnSTYNPtTX
         e++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756852678; x=1757457478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C2Z2q0BkPqIY+E04bVXl2gU0zLZQjMNqg1qcdhYoTFM=;
        b=ayHX9I0hDI5x1cIguu8RCgLSuicQkDMuQDMteTuer3yaK2XdbPpLx2jBh6IWiJV19F
         LsWzJI5CHYgmL64e+dNlUgW3/f9+KcKXTFI34VXJ5Vyx26Tu+p/dhS0ba3F3P1ADd5d8
         cb/072UIFydCzWv97aRS7ebk3bCvPWlvkbmTLNdB37JZiGn9lrRfztEugoK2nn07HNHU
         8resYSXafUyQBSwwL5J3ZlJzYDNcGUWrHq2Im+yvsPLGVkZPNAgNFVSS3/79WLLHQBKf
         96Vt0NfMDQSMG8AdrL3eCeoOEvfV6GMtwk3tz4Z1Y2kmqvGkVFmilC4F+7vDssA3BiOG
         Mepg==
X-Forwarded-Encrypted: i=1; AJvYcCUZHi/HLZvgKyOcdo16faW+f3DjEU+fzKW9xTgqfeqmTfTskd3UJHmqi0VVSJchcRs8HIAcMI2eY5I3ZYcG@lists.linaro.org
X-Gm-Message-State: AOJu0YxeQWtrVPdbYRHMxA6g5+erVcYKNzB2p3VUXaseWQczlZT/6Zbv
	HpdivGqBNFpAc81bwBwzA80DNbzB/rND/ZMJK870B7J2ZnUtj68FmfGXqMPFW0jLOuhHV1kBwxX
	Ufkr3VUQiQLXMsxxP4ACEKEmOpzJVCvFAWD6k2mM=
X-Gm-Gg: ASbGncvXpkM+eVeWrXIsI82WtFBlnXXFwtmEW0ibydmUgmGLQtNFunJzZumStmzo9JG
	1OFr6DPAQh2luplzzugk/GvEwpXXCVZvXc98nCgRiRHxllDV01tipg8/87IdQs9mCaPUaBpvz2e
	QYj89acz2TR+/j1dqI2AG7qiWc9dK5bXZt4BBrgeTlcVIio9Bi0sV7lGLmdwnh0ko229kWcAyWW
	zxgfTozsReHu/lmW7vkdylO0lv5ctUgLdgqFFoz6OuoVz2BFnI4m1yKbn/Envrq
X-Google-Smtp-Source: AGHT+IGmWy6Aq1ZCfTZaoiG4mkrbhZY4MfRXR19EYAWZXvoUsJvrpBj01w+uPYMLT8d4w27jw93YIe/anSgqxv5w//I=
X-Received: by 2002:a05:6512:32cb:b0:55f:3bca:b161 with SMTP id
 2adb3069b0e04-55f708db526mr4266129e87.27.1756852678372; Tue, 02 Sep 2025
 15:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250902154630.4032984-1-thierry.reding@gmail.com> <20250902154630.4032984-5-thierry.reding@gmail.com>
In-Reply-To: <20250902154630.4032984-5-thierry.reding@gmail.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 2 Sep 2025 15:37:45 -0700
X-Gm-Features: Ac12FXwG3iNj8EaL9OuUHyuMyacZ5I_i_Y3lylzCsdPDiddwbaDN3qJymljUZSU
Message-ID: <CANDhNCoM4RFX-QccF7xT=+-tduGj9OZ_8SgrTVyRucMwyVc73Q@mail.gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D1AA4443B9
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.40 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	BAYES_HAM(-0.90)[86.03%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.51:from];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: STVAEBPUK76QAP7RZ6VB5WB4BSKQAALA
X-Message-ID-Hash: STVAEBPUK76QAP7RZ6VB5WB4BSKQAALA
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] dma-buf: heaps: Add debugfs support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/STVAEBPUK76QAP7RZ6VB5WB4BSKQAALA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgMiwgMjAyNSBhdCA4OjQ24oCvQU0gVGhpZXJyeSBSZWRpbmcgPHRoaWVycnku
cmVkaW5nQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IEZyb206IFRoaWVycnkgUmVkaW5nIDx0cmVk
aW5nQG52aWRpYS5jb20+DQo+DQo+IEFkZCBhIGNhbGxiYWNrIHRvIHN0cnVjdCBkbWFfaGVhcF9v
cHMgdGhhdCBoZWFwIHByb3ZpZGVycyBjYW4gaW1wbGVtZW50DQo+IHRvIHNob3cgaW5mb3JtYXRp
b24gYWJvdXQgdGhlIHN0YXRlIG9mIHRoZSBoZWFwIGluIGRlYnVnZnMuIEEgdG9wLWxldmVsDQo+
IGRpcmVjdG9yeSBuYW1lZCAiZG1hX2hlYXAiIGlzIGNyZWF0ZWQgaW4gZGVidWdmcyBhbmQgaW5k
aXZpZHVhbCBmaWxlcw0KPiB3aWxsIGJlIG5hbWVkIGFmdGVyIHRoZSBoZWFwcy4NCj4NCg0KSSBr
bm93IGl0cyBkZWJ1Z2ZzLCBidXQgdGhpcyBmZWVscyBhIGxpdHRsZSBsb29zZXktZ29vc2V5IGFz
IGFuIHVBUEkuDQpJcyB0aGVyZSBhbnkgZXhwZWN0ZWQgZm9ybWF0IGZvciB0aGUgc2hvdyBmdW5j
dGlvbj8NCg0KV2hhdCB3b3VsZCBvdGhlciBkbWFidWYgaGVhcHMgaWRlYWxseSBleHBvcnQgdmlh
IHRoaXMgaW50ZXJmYWNlPw0KDQpJcyB0aGVyZSBzb21lIGNvbnNpc3RlbnQgZG1hX2hlYXAtaXNo
IGNvbmNlcHQgZm9yIGl0IHRvIGp1c3RpZnkgaXQNCmJlaW5nIHVuZGVyIGEgZG1hX2hlYXAgZGly
ZWN0b3J5LCBhbmQgbm90IGp1c3QgYW4gaW5kZXBlbmRlbnQgZGVidWdmcw0KZmlsZSBmb3IgdGhl
IGRyaXZlciBpbXBsZW1lbnRpbmcgdGhlIGRtYWJ1ZiBoZWFwPw0KDQp0aGFua3MNCi1qb2huDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
