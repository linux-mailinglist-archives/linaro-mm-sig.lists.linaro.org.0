Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEJaG6Bj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F9D4317A2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD8B7404D4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:34:22 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lists.linaro.org (Postfix) with ESMTPS id 30E963F719
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 05:00:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LnIe95ca;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.210.47 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7d4c383f2fcso5030634a34.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 22:00:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774933213; cv=none;
        d=google.com; s=arc-20240605;
        b=bNtM3ZR0sWjEiolq+jMk2lBK/yB0ZPW8nqUcraNEL5xGTQJNlj6MxNsfXoRZNsTkqw
         VfLPqWgE4XVAZNCz5UmgLkugW6zSCRZYWaLICAYSEpAvg8KorQsCGP9FHtQnkklMcfk3
         XgEIe2w8INLV/tBv5zBo2g0CbE9enz86miCjkMnCPmgS09fGGwfOP9jY3lH0VJbRrtL5
         jhnCVNu/dGTuLOJD3wdezy7A76W/sP+FfNN52Gal4lgAnPXuRfztKk41KzmfNIa5DHyB
         w5ZeYKq3yfvk0+9hr/5mK6pE1C8olsK9hrExLZ/LtEIb/5GDNNvuDQHEZZvWAeE7Mql1
         TMJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qn9GR33IpU25pLfXu1OSUX8rRbknNQbsON2unRJuEZI=;
        fh=G8dFPvF91y03Mi5uyJCoeog0+AoUrzfMjsgVrwlF2Zs=;
        b=ZLJuW4YF9Ec5yC1DX2Rb2c8VGl6vJBVLiUJbQIUJacbdb/5WVcFr2vDCwUHyO3G2J5
         DpNfKdZdUyIpmcCI7QtXjHBdFfKkS0+2UC3eVXOc9+ozby7HTnobuQXQJQjD1pMsraa5
         c1hOjF1ufRYudlE0u7yURZZgXvI909rsYhvhJN2YY13DuQGk5m2nRA+UPqo78pTwzbD/
         3w1PaZ4G/5hwFLDjyPonU/w9D70acXz+s2VlAqSMQmYM0bCbtNUFt+7BruR4oZIf8eSg
         47bez1asjGnUvH0PQMFZuxONgPGFcn7KXTNop00gOLgjrrSJNpyp+uFXYgOIJlrdCpbl
         7ZnA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774933213; x=1775538013; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qn9GR33IpU25pLfXu1OSUX8rRbknNQbsON2unRJuEZI=;
        b=LnIe95ca8HbEgBgqJ+2pQCcyvMebh81pq60ELU5f8k/U1aNtjuBbdzjo9eB/ph3bHL
         xOrIuBJ6C4CWIPaHF2VZvNFeYjuAjffxxCSHwoAQU7f2uByatMimCxRjDMaIXE1sPbjb
         bOLvfIU1MdN+1o9ky0W9srEWqNCGjDBiigiWOt0bbnXLOh4SJD4dGkis/7hIpJ+Flpsd
         EYtVDRASqPENHzya7ELu5iXEKRsMwr5vQBH/PF8xHEw0GgJh+UIO9eBAGQzxs2q/g2/L
         r+MUlSJvxL//V6wn490rlusxZxABn0vhFkYcqpsY7FBlqY1TvydXH3IJwefOQ1O1m8W5
         LZ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774933213; x=1775538013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qn9GR33IpU25pLfXu1OSUX8rRbknNQbsON2unRJuEZI=;
        b=phYN6WfM0l0PENfoWka3C+L2FNyWsj03PJKZM5BavPLq4ghWv3XSeqpIydRpjSOqa3
         6uPF0rgJZKZ0TcTjXbsabZIlPp8O7KTVfRSHyu0gpwsuJRi+8qi0DDurDcSmKOn5+Rez
         uVpGATcqWQ82gEuYnSfEYTbJHJzOkrXG61r1YSUjiVW6bdTJcGUirIxRKQbBWQbrDs2f
         Qchl30j2g/ymzwjsHJBA1H0Zb8PI/i6HdtLAcvQYsN1IetbqzrMhzHl8E95yRjt9rq+k
         Xkc0mJqP9BioLiUZcy9OfuP6PbrkEYNBJ1x8TvZ1WK0f9Xs9OjKwxqJlTPp+y05amAKJ
         yWJw==
X-Forwarded-Encrypted: i=1; AJvYcCWsPooPCpFrBSlJ1cP+yNwGe3J0OnyECF+VKI4XuPmx8k9pdkv5du+vnEsXug8fz1eE0zRjkOj7ASQ3FrzU@lists.linaro.org
X-Gm-Message-State: AOJu0YyAXK4EmmbNU2MrqwU69+WTZZOg+yyVrLNk3SWwoG3CLwxGV7cS
	5hJ1bHwHGw3Rum7/FONoiWKx3xIpwIL5Nw339rbZ4wnTTclzceaWOzdsd/6xzdQNoFzLyISixSM
	Cmzp/dh7M/wiA1wEmVXEKMbRSMMqbbPg=
X-Gm-Gg: ATEYQzw02i6XazuLPJSeeuGMYFDaCK3UgTsdc2G/3U7/PfGMmNOyEWp8oueCg7P5E/H
	i+AGbhbSz7HlgoW64AOicIwepTnmjEPJ5jOmMKEBNNdVP4vXOWJq2e2Vv3V5MuT3EmscfT8NHi+
	/A0mNuJ38gi0KOVUlwZx2/Ig24NeLhc1sTMPgE8JQqDACvW6FF8Ey85YIoOj/Z0cZ9Kf1ScnJGw
	0FYWfOT4tOsBHLb5o5dA5HmtC4rjpXPldP9wVYcoQteDOMR07Zu/QNW/jNv87kA83L0aNTALPZf
	zV5EwrMoW8s7QV36/3e9
X-Received: by 2002:a05:6830:82a9:b0:7d7:455d:1003 with SMTP id
 46e09a7af769-7d9fad9b3d5mr8646097a34.4.1774933213062; Mon, 30 Mar 2026
 22:00:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260314232722.15555-1-mikhail.v.gavrilov@gmail.com> <CH3PR11MB7177D5538C726029D80BA6CEF841A@CH3PR11MB7177.namprd11.prod.outlook.com>
In-Reply-To: <CH3PR11MB7177D5538C726029D80BA6CEF841A@CH3PR11MB7177.namprd11.prod.outlook.com>
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
Date: Tue, 31 Mar 2026 10:00:01 +0500
X-Gm-Features: AQROBzCwLvCBjKMjXnGlDUOQAPoq0K7FN6AFDT1twLET-_2xPEv2urT74LC2vBE
Message-ID: <CABXGCsP+4pSyXHcOBokD5kSuVVa86xhjD+8OTy2woGavovhNKQ@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
X-Spamd-Bar: -----
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: I5HJAFEIU36NICQGN5QZCPPDFBHF5QU6
X-Message-ID-Hash: I5HJAFEIU36NICQGN5QZCPPDFBHF5QU6
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:31 +0000
CC: "kraxel@redhat.com" <kraxel@redhat.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: fix DMA direction mismatch in release_udmabuf()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I5HJAFEIU36NICQGN5QZCPPDFBHF5QU6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[492];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.770];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D9F9D4317A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMTA6NDLigK9BTSBLYXNpcmVkZHksIFZpdmVrDQo8dml2
ZWsua2FzaXJlZGR5QGludGVsLmNvbT4gd3JvdGU6DQo+DQo+IFJldmlld2VkLWJ5OiBWaXZlayBL
YXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+DQo+DQo+IFRoYW5rcywNCj4gVml2
ZWsNCj4NCg0KSGkgR2VyZCwNCg0KR2VudGxlIHBpbmcgb24gdGhpcyBwYXRjaC4gSXQgaGFzIFZp
dmVrJ3MgUmV2aWV3ZWQtYnkgYW5kIGZpeGVzIGENCkRNQS1BUEkgd2FybmluZyBwcmVzZW50IHNp
bmNlIHY1LjUuDQoNCi0tIA0KQmVzdCBSZWdhcmRzLA0KTWlrZSBHYXZyaWxvdi4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
