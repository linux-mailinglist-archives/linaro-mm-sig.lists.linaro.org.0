Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBlJMEsK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:11:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 966504116BB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:11:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9269404F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:11:54 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by lists.linaro.org (Postfix) with ESMTPS id F3F863F8F3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 20:05:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=M2PBwqwf;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-8887f43b224so13384126d6.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 12:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766088316; x=1766693116; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K2w2+c+YKiYKr2r9Xowor6oYCm9+yfeKolfOeIUsbJQ=;
        b=M2PBwqwfczRv6yxUlhBdhycEPjPdRQy8rnIQOw7FMFKu+jiMX0ijxqsQPP/KcnG4Uq
         Et/Z2bSPXZSN8rE4npek4pn4YwKhIuEAxom928otNLoiAeUm+vw1QgJp1xa9u1cvmTi2
         mZt2GSEUXrxpc0f4VHVIpCjSy1XfEtdJQDfaJwc9cuHwd5o74WKirBBhpuOgd8OWmoqQ
         mn0oQKvzGBQQFZnWtO3jVrutURunMPacOub+Nlq4jDvpQJzM+NIgm2MTB7b3qmTnSLvh
         odwyvUlXi0oTniXWRNJ7cuVsrnFwmzAVIqwnqnZlpE388iTuJLgIVrefYdUyes7JRHLO
         yMVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766088316; x=1766693116;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K2w2+c+YKiYKr2r9Xowor6oYCm9+yfeKolfOeIUsbJQ=;
        b=De9QLSxwmnao/dD8n40UYrO6EvkvUBmmUp7/T+LeV7Vnk4ETYPNxKDmnW+R0isZ2zL
         KS4/yTo4d8GZ2SpI11r3Pjx3rrG8H1VAgrp3jVORoa8byvDKTfb7MTYOG5+YUq2DdyXo
         TSVxhzzB4LE6ivERL25A3z8N3T3wnfWXiDF9D3MpLHX7G3ij+A1J6RswcnO94YeaUPM9
         auKkLed2PRTOSzW6KdJp15uCR7lHn4LLibErLAgnBTencmU0WqpdDjH84ajh5pyUgCMT
         Z5OGlTtEcxalI60MaUXmKIcrHiSomA7PYYOFi/R9uEN5VbjPlVtO9mLnj+xW7IA/M98m
         xH9w==
X-Forwarded-Encrypted: i=1; AJvYcCULtWgFmhZT3joOgrwaCyWv2nmzbV/GzHLT5T9ZmqpadzdQjGtJhSG9+Qcpg/KUOkAKw4PRF5lgI6x6T2tw@lists.linaro.org
X-Gm-Message-State: AOJu0YxutvQwN2kC/xs2pwV4NFGYN2fa5czieGeKIUEHrH/9zfRRm+qn
	ac68yrN4z+JBQZJaiiTDyYJvv1nyyvtxPU1gLwszfoPwReNDVxfWOsWGD9RIFAe92z/kZp9WS5h
	yp5/9hlavhXCG6DDq6aUG/xYMn6ibD4E=
X-Gm-Gg: AY/fxX4hRvTEaohpX/vKhLw7uD5iVWdXjjqDwaDmAX9DXWpBo/inbdg9lmjTmikllsa
	CcrYFwfXcR1K17LSKglDpckIdmQb2A0YMNMtiHhfJR0PanGDq65kH0qh+984oHH2RkXzomUipph
	vTMyaP0BAiAQCdTkiiC1SOfxPrUMucE2VadzIc066C4jwXi17cHGN012B2abaYT9flanpNfupRR
	md9ieVS9y1HS4e7Ka9zV2GxgIV2SpqdW8o93KQc21SXwOgn7ImdUFVOveLMW/gcsLL0CQ==
X-Google-Smtp-Source: AGHT+IGfIU5RGxtASwu3bgpX3b92cFmnR8DyddSN6GsrTR4BnDx7NubHp+pRDhWWPTmxwurkx7B44lRP57rfNIwWyMU=
X-Received: by 2002:a05:6214:4e07:b0:882:4488:482 with SMTP id
 6a1803df08f44-88d84434111mr12774246d6.62.1766088316168; Thu, 18 Dec 2025
 12:05:16 -0800 (PST)
MIME-Version: 1.0
References: <20251215053050.11599-1-21cnbao@gmail.com> <aUQJEa643lQAGK6s@milan>
In-Reply-To: <aUQJEa643lQAGK6s@milan>
From: Barry Song <21cnbao@gmail.com>
Date: Fri, 19 Dec 2025 04:05:05 +0800
X-Gm-Features: AQt7F2raxnY_WBDzIdYwiT21G3LhQyvH-Z-k4m21oQXjYaLgAcLMtZPi1-shSsA
Message-ID: <CAGsJ_4zwqbg889+CTtO8XLQZu+rFs-m6+kANKO78-TAf4zjjaA@mail.gmail.com>
To: Uladzislau Rezki <urezki@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AZ2Y5SIVXPG6FGPE7W26E63QDVHXZTDM
X-Message-ID-Hash: AZ2Y5SIVXPG6FGPE7W26E63QDVHXZTDM
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:01 +0000
CC: akpm@linux-foundation.org, linux-mm@kvack.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Barry Song <v-songbaohua@oppo.com>, David Hildenbrand <david@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <mripard@kernel.org>, Tangquan Zheng <zhengtangquan@oppo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AZ2Y5SIVXPG6FGPE7W26E63QDVHXZTDM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[2852];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.555];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 966504116BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

[...]
> >
> > +static inline int get_vmap_batch_order(struct page **pages,
> > +             unsigned int stride, unsigned int max_steps, unsigned int idx)
> > +{
> > +     int nr_pages = 1;
> > +
> > +     /*
> > +      * Currently, batching is only supported in vmap_pages_range
> > +      * when page_shift == PAGE_SHIFT.
> > +      */
> > +     if (stride != 1)
> > +             return 0;
> > +
> > +     nr_pages = compound_nr(pages[idx]);
> > +     if (nr_pages == 1)
> > +             return 0;
> > +     if (max_steps < nr_pages)
> > +             return 0;
> > +
> > +     if (num_pages_contiguous(&pages[idx], nr_pages) == nr_pages)
> > +             return compound_order(pages[idx]);
> > +     return 0;
> > +}
> > +
> Can we instead look at this as: it can be that we have continues
> set of pages let's find out. I mean if we do not stick just to
> compound pages.

We use PageCompound(pages[0]) and compound_nr() as quick
filters to skip checking the contiguous count, and this is
now the intended use case. Always checking contiguity might
cause a slight regression, I guess.

BTW, do we have a strong use case where GFP_COMP or folio is
not used, yet the pages are physically contiguous?

Thanks
Barry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
