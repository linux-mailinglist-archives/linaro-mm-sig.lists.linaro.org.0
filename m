Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COUMLtw4sGlbhQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 16:29:32 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAC625387B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 16:29:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BCFE3F6DC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 15:29:31 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 6A0B53F6DC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 15:29:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="XEYmv8P/";
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4852af55981so85235e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 08:29:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773156567; cv=none;
        d=google.com; s=arc-20240605;
        b=UP8tEtRY1njVDxfp3CymVfcHFclYKxMdpcObz6krtUCDbF6E0TxzdIAXj0BcECXCsN
         CVY7VvOMVZ8m2c0SavWN/c2GPbgW9VRaN4HTE6tyuYZtrnqVd/3kA2S48fa0qcmrGWFi
         dRY9SQyBV/f/be15793sCoSzV34+QetRDLnQju0lh2AYdrGMzBptv4KHLlQ9EP05m3kl
         yXVXziKT7IT+qD5J0zUGCaW8DGHm+aAjEHnh6N8DKkJigsb8murvIg83hAd3W/93Lg56
         k1Sdb2k5AoVq2fxAHKfEFPpY3C+YKjDchQRBQ/Ky2anfwF9Eedi5IDsjXXKANlKriSMY
         H3tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kIxjNUQ02NPSCP5UuacwRgeGtJjNAs6igvmq7jsQPVU=;
        fh=5Dvfpu5E3BBnImi311S9pMWcmi4ARI53Tk+b8YqR0Cc=;
        b=XXSJYXJiRkrPdrVoTHSR6QTBe5s6dhlTgtwDvE++TKLZxgXqlImMkDX/dzVKf4RskI
         h5ZI2aNJUd5B0dFnISdVaYMg+MkujmLGnqbgNX6O1xP3764RadlqIkqrooH5pQsMzIH4
         zT753zQxZx+qzuigkh0A4mxkHxgI4CFpzhJRoGrGcPZOmq2Uuog7cMN+C0LGpYBpafB6
         chNFJzMsDMXUXIuhTT2/RD0+PIk9Pu2hw1gy8BuKmk31oKrEH2RHWJhwT+boEFAlRTrs
         HNkNH2hhdpD5xkKFwgorGhyXiglqOoZMV7jXZ+pXpHdcdbKNzyK2nce4nf1Q58rhiSJ/
         hhnA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1773156567; x=1773761367; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kIxjNUQ02NPSCP5UuacwRgeGtJjNAs6igvmq7jsQPVU=;
        b=XEYmv8P/gHryv4g6PEdZtks7mbC1wGTfu7UpIvfE8AILdk+f8twLND4gyn5qY9Sj+a
         WLI3b4PWc7bu0ISsTjVMCF+aTlQwOXOJW4+rmEB1Yjd9lZkIwcgELyehRuC33ff9PdQ7
         AczBI5XE8Mhgx16mWVoP4fjJJJiaFhDlbSyqS2t227WwML+IaDsPBNjlBvyszeyoklW0
         ZRBMXeduljo+FqVmtyecE85SXOrRJ8WBS+nmB/qncOoOyIwGY2MFazvGwQsOPnbDYJ8h
         04gO9aJGb6u2d9u0xFPUiQDw/FB6SWzPIpDdxtR0vwa7AKgNN9JCYL/hc6LvaCKziRRs
         fR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773156567; x=1773761367;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kIxjNUQ02NPSCP5UuacwRgeGtJjNAs6igvmq7jsQPVU=;
        b=nHOOGgWX3ekrD4hAp326bCRnDRWMQQ98JhA0X3tbWHfMcDNLnV1zoP3CQUpBBJUJtn
         uDX0mNqAN9g/Cv7cYUOPPVdRyWpUkPGZrgrrES326G3pE7YZg1oo2a3Es2rG33ssX/+k
         4g83RmqZVXTCnGHk41LUBcz/q7ZqdjAHO7WONhmAKkEmCehT7LWYRLrh2ztX2YDZpJ1E
         fMjBVVqYPvbLf41T4v27IS2SiKUnMmpWQie+lIQBjuiaPanp90GSottg2vM1PZMenOd8
         43fL81UMx/OzpDURqX5Urigus83Ekq2p9PaLJqzD4s/0ohlgWqjHncQOcVx5DjrZ0056
         n89A==
X-Forwarded-Encrypted: i=1; AJvYcCXTJEkbWpPyWhx4mvoea66v2qAGcZ45iXTsMfvxHkmOiiee2sbWMuRO3NOsWHZsvbIjNy98N1vOv2BEMavo@lists.linaro.org
X-Gm-Message-State: AOJu0YylVmsdYOMfM5MYBCzfMXPSDDvzcLPOl02We5JrgFUGsDyPqeiZ
	g4FzP+yMiALkI6H1ujagqlUi32yAndeI025O0tInwFKzLeiByUk8c8nHzHJFZM6H9zrKJShagow
	ydfgfESR4ZGXDLAF7mY+39GODw2jSmaMKiTXYYiMD
X-Gm-Gg: ATEYQzyy4wZy708DAQ5NBNnzc4klKJgFc6u0R1wLiAZt4S+slgwIi8cvr021x4j5iRC
	3q4cbHLSn0ZVYAnkxvRDdGKANoctA2f+ufcwq/Jt7vuOYP0QmY2tZThunjt2nRt8706cUgXXHmj
	VDAfIGerck4kNv7ioSaU9Uetz8PUWGtSgIBmetvBjWinIbrIjjYfNmGGYqdyp/AV04LI9WKgT8u
	e6MsF+06f5vPD+N70RwcF2U4qsa5WAOmMCdKmM1w8phZ+vtgNFJXIi3GMxgK4uod/Rx8vnMTEb/
	l2fv3U6pdIp2q0T8hVlk5MepI4vf8hMGuwsROw==
X-Received: by 2002:a05:600c:14d5:b0:485:32bb:7b82 with SMTP id
 5b1f17b1804b1-485422f0990mr713255e9.16.1773156567011; Tue, 10 Mar 2026
 08:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org> <20260310-cma-heap-clear-pages-v2-1-ecbbed3d7e6d@kernel.org>
In-Reply-To: <20260310-cma-heap-clear-pages-v2-1-ecbbed3d7e6d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 10 Mar 2026 08:29:13 -0700
X-Gm-Features: AaiRm51OfYQMi4uAoBCOFKD-AC3RahsO3Cwjn5nzCKdK-67emxyGfOBmUyNaDi8
Message-ID: <CABdmKX325TDBwJEFGdacoQgubQGxz4vPX_+-Gqx8kL4ofMZbyw@mail.gmail.com>
To: Linus Walleij <linusw@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: C6DEQCBRY4PKZLEU3O5T6TI6EWMQL6C5
X-Message-ID-Hash: C6DEQCBRY4PKZLEU3O5T6TI6EWMQL6C5
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] dma-buf: heaps: Clear CMA pages with clear_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C6DEQCBRY4PKZLEU3O5T6TI6EWMQL6C5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 4FAC625387B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:-]
X-Rspamd-Action: no action

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgMTo1M+KAr0FNIExpbnVzIFdhbGxlaWogPGxpbnVzd0Br
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gQXMgb2YgY29tbWl0IDYyYTlmNWE4NWI5OA0KPiAibW06
IGludHJvZHVjZSBjbGVhcl9wYWdlcygpIGFuZCBjbGVhcl91c2VyX3BhZ2VzKCkiIHdlIGNhbg0K
PiBjbGVhciBhIHJhbmdlIG9mIHBhZ2VzIHdpdGggYSBwb3RlbnRpYWxseSBhc3NlbWJseS1vcHRp
bWl6ZWQNCj4gY2FsbC4NCj4NCj4gSW5zdGVhZCBvZiB1c2luZyBhIG1lbXNldCwgdXNlIHRoaXMg
aGVscGVyIHRvIGNsZWFyIHRoZSB3aG9sZQ0KPiByYW5nZSBvZiBwYWdlcyBmcm9tIHRoZSBDTUEg
YWxsb2NhdGlvbi4NCj4NCj4gU2lnbmVkLW9mZi1ieTogTGludXMgV2FsbGVpaiA8bGludXN3QGtl
cm5lbC5vcmc+DQoNClJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUu
Y29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
