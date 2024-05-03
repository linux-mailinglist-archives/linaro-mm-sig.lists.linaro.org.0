Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB838BB7B5
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 00:46:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 943894488F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 22:46:38 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	by lists.linaro.org (Postfix) with ESMTPS id 0F0BA3F06F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 22:46:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=HOQMtGwp;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.210.170 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6f0aeee172dso104193b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 15:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714776387; x=1715381187; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mDJm+G1eQTkRtzeGacfCcUIfkVf82OdjbXxPvJWkGL8=;
        b=HOQMtGwpLUv5CVQRXskPtLDW6EdXpkiOlHpMmk+kvqThTy9MRE1yvIC5XjTxn9w4PG
         OvWiOWnYxrqKkozxPQ1kh0ZhFk+Hr/nw5qMr7qZ9g7ekNDkaYJNBHpMJLejdxxDhwSP3
         2sRE9IoQimXEVDekPoceX7Gejyr9U5aNZJGDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714776387; x=1715381187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mDJm+G1eQTkRtzeGacfCcUIfkVf82OdjbXxPvJWkGL8=;
        b=NLHM6eyFvGJjqn5SVWMRn4z05jcm7qVFrJtrjQFpjabFoZcvBXsKINiJGtaGAIpRrc
         ue63+gydFLzbuEB3LDgOs1HTqQxwdqbJ25H3y823WtkHTZ0H4BMfDUe+/Kty0q12Us8f
         d5qpDIE4z/WjAEwpx5oN0luQfFx5QEJCjuC8QvLb4vbdzlRWC8LU6DSXOApxRdxEamu1
         AxfKMyZnmIJ5vYkmrePPPUy0zcC4OEp8FGJZg+QLj7Uoqu788+n+IdivP8UZJP/mSnyk
         f9hnkx6jxMPyneyRykD6MURYPbWoiLKACUyxiDCF+LpC7TuatBqjCapYfCrJ5ApOsfWh
         7/1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCFZZTe8yF6MRANAESXMQk+UZzXbLJ6v4wgkxjHeWe2QVCx1MbjGQXxU5bq7PXkp3n1w6IlTekyGpvlx7p/Aj7xIbRmnhH5XSxNlMq7Og=
X-Gm-Message-State: AOJu0YzfnokchWx3VZiN5aGcoFefcSfpJV5+ThDyZCNoz97o4EQAnv1d
	loE2WkRiwMIctydOYEfpjUmzfmdeMbIC7V4381fVd4oW0ypHadme1m2WH0CD1A==
X-Google-Smtp-Source: AGHT+IGHwRAHiUilkIaBMSgKxfWAn6dj229eadrK2bv8wlplvr3MD06FsL2cYfgcUjeFAYrze9wdSQ==
X-Received: by 2002:aa7:88d2:0:b0:6e7:48e3:7895 with SMTP id k18-20020aa788d2000000b006e748e37895mr9433402pff.2.1714776387222;
        Fri, 03 May 2024 15:46:27 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
        by smtp.gmail.com with ESMTPSA id w17-20020aa79a11000000b006f4476e078dsm2406826pfj.192.2024.05.03.15.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 15:46:26 -0700 (PDT)
Date: Fri, 3 May 2024 15:46:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <202405031529.2CD1BFED37@keescook>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240503214531.GB2118490@ZenIV>
 <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0F0BA3F06F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.10 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.170:from];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	DNSWL_BLOCKED(0.00)[209.85.210.170:from,198.0.35.241:received];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: Y3PIESTHNAUJSLUILYU3MUXZ7LABZAY4
X-Message-ID-Hash: Y3PIESTHNAUJSLUILYU3MUXZ7LABZAY4
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Al Viro <viro@zeniv.linux.org.uk>, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y3PIESTHNAUJSLUILYU3MUXZ7LABZAY4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 02:52:38PM -0700, Linus Torvalds wrote:
> That means that the file will be released - and it means that you have
> violated all the refcounting rules for poll().

I feel like I've been looking at this too long. I think I see another
problem here, but with dmabuf even when epoll is fixed:

dma_buf_poll()
	get_file(dmabuf->file)		/* f_count + 1 */
	dma_buf_poll_add_cb()
		dma_resv_for_each_fence ...
			dma_fence_add_callback(fence, ..., dma_buf_poll_cb)

dma_buf_poll_cb()
	...
        fput(dmabuf->file);		/* f_count - 1 ... for each fence */

Isn't it possible to call dma_buf_poll_cb() (and therefore fput())
multiple times if there is more than 1 fence? Perhaps I've missed a
place where a single struct dma_resv will only ever signal 1 fence? But
looking through dma_fence_signal_timestamp_locked(), I don't see
anything about resv nor somehow looking into other fence cb_list
contents...

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
