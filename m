Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A00664BFD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jan 2023 20:08:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B1073EEAE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jan 2023 19:08:18 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by lists.linaro.org (Postfix) with ESMTPS id 271D23EC0F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jan 2023 19:08:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=kNneCXnU;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.171 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-4c24993965eso160325017b3.12
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jan 2023 11:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eB6zDLr3jptFznjCY+cJ6LV+lGxSv6mlgWXUb4GRVLE=;
        b=kNneCXnUbGtaezFZly8EELiFvrMI8uCxra4hUNp5F8h55KzRcraX6HTcL/eoX2slxU
         5eIut2BW8V2KxE4ECFGrtM+afRxG/KTeduZVHs5S8WSaTnrTAKUpQ9LGjuGWxJrrW+Rb
         HL3W/mk5/ZWXlu153IFY6bWd5ku/c5DQ1P/WEPBZYa8NWqLe/FC6eZ+nVcj+NfNmapAJ
         hhVfZ0STKoz+rrAswTAQZmVDSFu+39MDK4KoXl6hbj290qVSa10/hwUiXT3+ysS6+4M+
         Fn8gtLHQRlRNe7nlS5w5XbzHPW/6rq2M3KUaxPGuT+9WamrHs6La624Sedcyvl8v1GSa
         pxXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eB6zDLr3jptFznjCY+cJ6LV+lGxSv6mlgWXUb4GRVLE=;
        b=1I2ctDCxkRK1xQXfLE398FnN0ay/M6NsF7IjgyLESCiemxV/bPNlNpbLq+HtfWNshk
         X8H9FOGwh3SjR45OdrqiGbe+pgeZ5hLm3f8Uhf5UJUyiWL5eaJj3Lbl3ALc+xQH9oqj/
         7wVapfIEQJCCuh5Vt4gtjS/hIKET/nL82kxezHy2FujVWCzCTZBbwhJFgpi0Z8tVOmHd
         LlfwQROgl5hWvXzTI7pBW6CJv6CJYR7lslesVYy1PwSsQaBf1PSVAutSJzJFpvH+9MNC
         l506tuKgFY5T2GnUYsv6zNCiPbZawFxEPttHSicUmLwhusUO7JFFD84b3FzphT5VZRDQ
         wLog==
X-Gm-Message-State: AFqh2koFvKm1RCQCCCSwG67Rb5K6r+lvY1IlDZ26JUWouXqJNcZ+WPQh
	n3ulF5BGK1PPKk5sj3gcLSCWW1zOXcj0k9qTYulxbw==
X-Google-Smtp-Source: AMrXdXuWt8GL2cvwM/11siCYrRBKZLbeyNUoNJAwEvUjJQicN0t0jFrxPGHJ56q+FKvR1iOeW+XS0IBv7xTbyCMXxzs=
X-Received: by 2002:a05:690c:b88:b0:3e3:866c:a51b with SMTP id
 ck8-20020a05690c0b8800b003e3866ca51bmr218703ywb.439.1673377695560; Tue, 10
 Jan 2023 11:08:15 -0800 (PST)
MIME-Version: 1.0
References: <20230109213809.418135-1-tjmercier@google.com> <20230109213809.418135-2-tjmercier@google.com>
 <Y70oqxejnUqkJVPx@dhcp22.suse.cz>
In-Reply-To: <Y70oqxejnUqkJVPx@dhcp22.suse.cz>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 10 Jan 2023 11:08:04 -0800
Message-ID: <CABdmKX3hBX1O8fJ2Zz0ajL=f+tROqWe-Kzr7oPjs46qBYBXV1g@mail.gmail.com>
To: Michal Hocko <mhocko@suse.com>
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.128.171:from];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.171:from];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 271D23EC0F
X-Spamd-Bar: -----
Message-ID-Hash: Z7CMRTEENIE7PIAMHWRIT4KMBNVRM7B3
X-Message-ID-Hash: Z7CMRTEENIE7PIAMHWRIT4KMBNVRM7B3
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeelb@google.com>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] memcg: Track exported dma-buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z7CMRTEENIE7PIAMHWRIT4KMBNVRM7B3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jan 10, 2023 at 12:58 AM Michal Hocko <mhocko@suse.com> wrote:
>
> On Mon 09-01-23 21:38:04, T.J. Mercier wrote:
> > When a buffer is exported to userspace, use memcg to attribute the
> > buffer to the allocating cgroup until all buffer references are
> > released.
> >
> > Unlike the dmabuf sysfs stats implementation, this memcg accounting
> > avoids contention over the kernfs_rwsem incurred when creating or
> > removing nodes.
>
> I am not familiar with dmabuf infrastructure so please bear with me.
> AFAIU this patch adds a dmabuf specific counter to find out the amount
> of dmabuf memory used. But I do not see any actual charging implemented
> for that memory.
>
> I have looked at two random users of dma_buf_export cma_heap_allocate
> and it allocates pages to back the dmabuf (AFAIU) by cma_alloc
> which doesn't account to memcg, system_heap_allocate uses
> alloc_largest_available which relies on order_flags which doesn't seem
> to ever use __GFP_ACCOUNT.
>
> This would mean that the counter doesn't represent any actual memory
> reflected in the overall memory consumption of a memcg. I believe this
> is rather unexpected and confusing behavior. While some counters
> overlap and their sum would exceed the charged memory we do not have any
> that doesn't correspond to any memory (at least not for non-root memcgs).
>
> --
> Michal Hocko
> SUSE Labs

Thank you, that behavior is not intentional. I'm not looking at the
overall memcg charge yet otherwise I would have noticed this. I think
I understand what's needed for the charging part, but Shakeel
mentioned some additional work for "reclaim, OOM and charge context
and failure cases" on the cover letter which I need to look into.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
