Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABa/JWBf5mndvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5D6430DDA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F782404FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:07:38 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C784D40149
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 09:20:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=MjuLlPxi;
	spf=pass (lists.linaro.org: domain of linusw@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=linusw@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 447F94421A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 09:20:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24820C4CEF7
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 09:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773220810;
	bh=kQUpjUR1n67t+7g7ZLfLOltzpZ8QpKa8rbwtn9vpasU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=MjuLlPxijresEdKnh6HEHH/prabl5PVYiqiuSkHo2NWMX+VgVq4YyLierFWtoveew
	 OzqcCJSl3GydvphlLqwBF8ekRS9hP8Mc8hB6u13fr/tyUK+IGioT39WObKe6KsBWdT
	 VqSE1GfyINqhluShWOQnO6nqzswAke79rnLUKegRfg5uPQO78WNLOY3CfnGmfmdm5V
	 belts+PSMz0Mjt31nfrHf1CQWMNXJ/CN9h0HGpEqiNfSXwOpySSpSU+unGfF7OzdCA
	 6QAYYn3C8vGFK2j8Bh2xZ2pi3ffYzQvpdBb83zzp3nt4jy/hsrAVqbuVVh0Yyw8Gg2
	 KCe32fZg0DkSw==
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64c9a6d68e5so10352096d50.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 02:20:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUvKDxxSaxdSxZ3eGM6V1EJj6cCkwkyQuU8UeCdhysiPQphyvK8+tyyJv/diABxCZKIUgdMlSzw0kfpHG+W@lists.linaro.org
X-Gm-Message-State: AOJu0YyGFMpgNn4s0fyKi6EteZoN2eRUGXWnVLmxWDoeGNqw3B4YZV6P
	5LJot4O8nLQxJiIXYccjNjim7QDMIcJbYq8iSBl/Sqx4JnEU6ePWYQpaRtdSVpDtinGmIykRH76
	lMIAEQp8hE7T+pfcnaVpLO2UUP6t4i3o=
X-Received: by 2002:a05:690c:81:b0:798:7861:5069 with SMTP id
 00721157ae682-79917e8035fmr16236127b3.9.1773220809439; Wed, 11 Mar 2026
 02:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
In-Reply-To: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 11 Mar 2026 10:19:57 +0100
X-Gmail-Original-Message-ID: <CAD++jLmNfWMHEcyxEzfcE6WnE1ajSLCWRDzYZa-Ws_6p6QPD2w@mail.gmail.com>
X-Gm-Features: AaiRm53rJjiRo-FnJSdIEmr-EESY7pcgybbaQZQRXtctwVYmjvpDAq6jHJc9c80
Message-ID: <CAD++jLmNfWMHEcyxEzfcE6WnE1ajSLCWRDzYZa-Ws_6p6QPD2w@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: linusw@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EHL4IJFKQKG7HPQRD4XMEFZIGHXOJHP3
X-Message-ID-Hash: EHL4IJFKQKG7HPQRD4XMEFZIGHXOJHP3
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:06:36 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/2] dma-buf: heaps: Use page clearing helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EHL4IJFKQKG7HPQRD4XMEFZIGHXOJHP3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[967];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.862];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4E5D6430DDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgOTo1M+KAr0FNIExpbnVzIFdhbGxlaWogPGxpbnVzd0Br
ZXJuZWwub3JnPiB3cm90ZToNCg0KPiBVc2UgY2xlYXJfcGFnZXMoKSBhbmQgY2xlYXJfaGlnaHBh
Z2UoKSBwcm9wZXJseSBpbiB0aGUNCj4gRE1BIGhlYXAgYWxsb2NhdG9yLg0KPg0KPiBTaWduZWQt
b2ZmLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51c3dAa2VybmVsLm9yZz4NCg0KUGF0Y2hlcyBwdXNo
ZWQgdG8gZHJtLW1pc2MtbmV4dCENCg0KWW91cnMsDQpMaW51cyBXYWxsZWlqDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
