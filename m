Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Bm8MdlTn2nXaAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:56:09 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 650F619CF9F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:56:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E6FF401AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:56:08 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 7343A401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:56:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="vfwk+s/6";
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4806b0963a9so14675e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:56:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772049365; cv=none;
        d=google.com; s=arc-20240605;
        b=izKMtlEDD8dscqw2IMTaYYVhL92Soe0J0w4Q3+nSL25D6EQoNlDzD4NLtqr1t68+jY
         NFuC2kGrbx8c6OYPYtqOrdwKNHj6e8nllbkgdMA/a31Ka1LXSgR9rLSXTwoUIDvNf5hG
         JGjircofGAZjE6CWS/KNm9u+awegZFBUY+GoRJc3NaLSem9LAQa6c6grbM1qUqJlumd9
         R6zp3XFugOhqAlbpqAkQ2QO81uYUc2/fl6H2acD8vLUIcLn5WJceKQNpYn1nbqhGfAcL
         A6wwZk0vYmW/8Ylck2kzCJV4KAk1TMmiQKKRC1asIjNbCGbWLd8dRXRt0Vv1kYMWQcih
         6vwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HRL6lEk8UXTpub6PekQgYs2cjNTKn63oRhQdj5ExDbk=;
        fh=XeRNjnREZkXJZoRNo2tqBzBzAF0DkZNFLRoM975D3W4=;
        b=DBXz+WoDxlyp++g8rc8ljriGTsiTKfKMnXk7GFdYmpacCR7j20y49R/w/UjvVVCsJx
         kZsRcmheYBp105tWd8AeAHZd81lCupbpYrjsEnWT+x8JVstO9ZhgwnAqnvE9a/Ui/s//
         saO4asryBdE0QlIeDfyTch/LAS2jjlPzxPJqHGXqqRv6wKCc9i3507zrPgSF00IJhGs4
         Q4NlSSHbW4e6eaKEqhEZjS4cr90gz0ub+ODRyI19i0H4aoGjgYx0S2wHuWmyU+Hqiy+s
         E4g2FK0TwEoHm8YncnFL6iS7naBI+OHkEJX0A1Rtv7y8EnYa91DNF/rwhd4yWe7TFoEM
         OpZw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772049365; x=1772654165; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRL6lEk8UXTpub6PekQgYs2cjNTKn63oRhQdj5ExDbk=;
        b=vfwk+s/6YZmImzMxSeSWNV6Dq/AHOgv11g5E48TGbelyv0TRtwq7n+HEcP0ljOrDxl
         U/iLMECnOtndWrx8oP88zLr7d+V0Ef78ONquOM8GCrl5syRR4kZoBZ/DKmFw0rjGHTja
         goQr8rmWkQMt+HxXakWRYn64ZTKctzXyIqeI6GG2BU/qGynXtUsozoHsxMBrTH1nFg+j
         D7xZjaYTTPPTmrhHT8NUnzpn56/XTPzFC4Sr9o0ucVxW5Xvh0FL74YjC1vKA/7XRwEFn
         LWVh5fhRcIkfGWOsoNKBNrp3WsBec8nm58WDU81uqR+/cloke9+440ExNh8acqA9YLQM
         SIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772049365; x=1772654165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HRL6lEk8UXTpub6PekQgYs2cjNTKn63oRhQdj5ExDbk=;
        b=ZZbPlO5o/mJFV9W8WNOOqHRwOrjM88rHUa8DwApyAWOfE2ov21cWXTJFOdDDfQeNQ7
         LJC4+8uijYa9Sf1BX9SmYYJtrqus1Sxao6Ff2kO4Jkkatr7j8o8Vt2p4jk065ZbIbZNa
         Wq4VfligK40H5qz5WdWt9sewF9BBXebPPXXNOjJljc/YzTYPJ1pxupK2Id4MpJwjI+3o
         CCCktNWdn2qrM6qdqqRwsmK4RgL8XC2iBCq2vroBfPeYk7xC3dKPRDSqUx3pRMEWwzjs
         bxkdUXaMLOqAArItjiXSYmohBcI0mXTJjUZtXqrrWZX5WCsW05VrcfdD66k0lhiEq5BB
         Gu0A==
X-Forwarded-Encrypted: i=1; AJvYcCWNGbKwDNg2d4KuTIgCWrHdqBaekY+yRCbBCLOVo4C3qUaV1/s5zCBTVe/It7vXD2fvllT9PgW9W4zOtGWr@lists.linaro.org
X-Gm-Message-State: AOJu0YyKo2x8rDHN/s54cjOebLeEwtcr1W6lb0yQNp+KVwlsLQ7CKFCS
	o5CZDgUwmd+nLtDw6yCBqAx9qouJvZzbTZr7GHdODK2nXoIuMc4cespzG5u4GHa+sZ36U72xknX
	R1ZfhW/Eig2WwhwvYNlHaoZ4pNldnWT3BZtHIg6MfLTqVZQ9WvRmFPYHrIa0=
X-Gm-Gg: ATEYQzykK5ErwiB50F/trXHZZP6g13Zp+q3Fz1g83SKUjfQMAG+dgOss6yZAoyJ95k0
	1C4WCcMw+6iGc+JCV2E1TYEu7tfAp0dho6lKJDk/7Ttn/OFe1gfTUN3HvQqtxZi1irjwGbg6LOc
	u5dcgEFNRTPri/JahRgts6O5qL5ORT6NYjS04a30Ox7x+VLDQj8vGlm4+j9gdq3kRekm36yjbgG
	fejXs0LY0g75HK+DAR2XGsymcDO8ZJnJqxKC589c1BKymH/kJkmmMBnk5ZJLbzUGGj8Y95F9evY
	ljSUNfawS8OUCI3PRcZb+edBZQ0V6Q/LKOODITAV/5N8xtkJN9K4QGFvgyaI5+fcYrqtxg==
X-Received: by 2002:a05:600c:6a8f:b0:477:c5b3:7a9b with SMTP id
 5b1f17b1804b1-483c3188d68mr92305e9.10.1772049365087; Wed, 25 Feb 2026
 11:56:05 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org> <20260225-dma-buf-heaps-as-modules-v1-7-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-7-2109225a090d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Feb 2026 11:55:53 -0800
X-Gm-Features: AaiRm50aJvmG-U5wbOHTqLRYSqzdYRLj0K9YYWnCflGgDx3T0BxE0_R2bnIQaGw
Message-ID: <CABdmKX12GL7gd_TMArPbjGwSOOhu+udFHZ61dDfMwWf3q6cB+w@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: GJELPBDQMJJ4GFETWPY7GXH2TK3U7S56
X-Message-ID-Hash: GJELPBDQMJJ4GFETWPY7GXH2TK3U7S56
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/7] dma-buf: heaps: system: Turn the heap into a module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GJELPBDQMJJ4GFETWPY7GXH2TK3U7S56/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 650F619CF9F
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgODo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSBzeXN0ZW0gaGVhcCBjYW4gYmUgZWFzaWx5IHR1
cm5lZCBpbnRvIGEgbW9kdWxlIGJ5IGFkZGluZyB0aGUgdXN1YWwNCj4gTU9EVUxFXyogbWFjcm9z
LCBpbXBvcnRpbmcgdGhlIHByb3BlciBuYW1lc3BhY2VzIGFuZCBjaGFuZ2luZyB0aGUNCj4gS2Nv
bmZpZyBzeW1ib2wgdG8gYSB0cmlzdGF0ZS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJp
cGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KDQpTYW1lIGNvbW1lbnQgYWJvdXQgYSBub3RlIGFi
b3V0IHRoZSBtb2R1bGUgYmVpbmcgcGVybWFuZW50Lg0KDQpSZXZpZXdlZC1ieTogVC5KLiBNZXJj
aWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
