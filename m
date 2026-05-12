Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PAyB0FhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B03532542
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D956F3F7BA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:32:15 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 386893F949
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 09:30:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="AGK8/kea";
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-bcd0111ea98so337358566b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 02:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778578238; x=1779183038; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1i6gK0r7rGWa5W/9WTpQ/H0vww/+AQmB17cNctDGbjU=;
        b=AGK8/keaTzn3uD+6u0vbJ5xCxrLDYMfN488ZbUS/R/k6hq5TCUddhI07h2fHClRvQ4
         TQceWTG7AtU0ZHIOHQNMY8zz8dKjKgObMPX0DfqFtML81DqG7q41fqMKewbQeXlQUCqI
         P8SwQdYvGHhKFBeMKw4TFM+FsnD4qmQug/C6stXrdFxeymrEQcIoRL6mb0JyAo8xtA7U
         dVBUFBVESYmM6wLVtsDfwB1OZZ7QbXVg83p6P+H5Svk+9kH0ZrDQUehnUncck2vVT8Ys
         vsPLdCMk5ZfGUi3+rhGNmBxObQmRx7WQGp3L2qyep0DUg0MRGMIAnMzXk4wA9r6xYTML
         8xbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778578238; x=1779183038;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1i6gK0r7rGWa5W/9WTpQ/H0vww/+AQmB17cNctDGbjU=;
        b=l+Uxr84FkVmD6F2LcbtMLnzWva4moRly6IPgm/IgMsPPaXQWJS9M3RqEJfQ/N+NUTR
         bkGiQULcj/TBuK3V3DybwHNbSml7R7ZOsReZJ9XWZq98oUIxJJfzroJNA68xK8hd/nxr
         xct+h5lJRNjVKAhWnHGHSn2GXNAcUK5QAJRcIv0vV4hcG+QJ7ozwf11883+3GQRJ3AJR
         lVgu1NTuI5rrlgDDjBb14OJ3qYXPUv1z/s2XGOKktgahqA6P3/8ciBEWQ/+2emkji7Qk
         UlhiszWjS8A2x/u9tMmzJ7EFKzl9gzDAaFi91gm/h74OHxBDiXVChABXNO7jp2Mimz0C
         YOuQ==
X-Forwarded-Encrypted: i=1; AFNElJ/0l7fwYy0w2goqk5LH/oskbCRGTQykvmrZ7ZRG/ERvnJ+4F/rLuFUp643Tm8EtXNXOMhit63p7OZWjt39Z@lists.linaro.org
X-Gm-Message-State: AOJu0Yx0GRnG8xK7HhNYGdoBuWM9ziXsHH5/+dMKCtr/+B57qSuCCjAD
	yZ+4HKXNH0/N1F3/FpUa2h8zPV4pvnmYxi4Toipyn787nIs7g9T710ZT
X-Gm-Gg: Acq92OGzbQaMpTdVi/K+f0MZZBr4ou5eZ+qiqaBE1QWHxh5lOXGs+p2wXZaY/N2v97N
	gF8erYniR+V//zvWSpKFfSIYkp34JWDa3tcEvRHsuHheOvR0lRcURSJdwQ6VW4vm06f5cbckJ4V
	50WuDOm+z8A3cyvdTu9A8gYG98mIlc31rrjvjf75i7zNNqkvdZuFoqKjAKYe+Ah5hW0iexZQJis
	2x8dJgnBL4Bzxa97zecLkbDl410/6eOoKC70AbUxKZMx9E+Rq2BRmkkj+Ics8RMi0/rVRqEN0uV
	ypwgKOTU1jcGWxlrKXy1E52TTf+JbDV+Fj9aJnEkkLNAZlpwP6/ejTT1v+U3MIa1erwaIvi1IJd
	8fL1+PbJ1zR1mj9Na0W1rY7C7WjKDu0FyYApYPJlMYwFkpHt/E6ZcMdy05Lgc6+d4HfLixaSQgh
	4FPDG2HsxCXJJprjsPUZOx/1aLxjRMjyOnSZcRgkQcKU3vcAvAVFt+g0uNlyYjpAFwA8xuivN62
	7yZ5mnBtz5flcN3zibljyFYIdqBZjYpwuNpYre9p2ffNCL7mw==
X-Received: by 2002:a17:907:97d0:b0:bc2:1dab:3ea0 with SMTP id a640c23a62f3a-bd28de036d4mr114881866b.8.1778578237873;
        Tue, 12 May 2026 02:30:37 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325::372? ([2620:10d:c092:600::1:8c90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bcfb7b17d1fsm303492866b.41.2026.05.12.02.30.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2026 02:30:37 -0700 (PDT)
Message-ID: <24cc68b2-c432-4623-92eb-b56b76850c35@gmail.com>
Date: Tue, 12 May 2026 10:30:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ming Lei <tom.leiming@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <afi7c-VUJWOLlC1m@fedora> <6873d617-c904-45f3-bad9-e1ae39cfecd2@gmail.com>
 <afxgc4hizusnAA26@fedora>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <afxgc4hizusnAA26@fedora>
X-Spamd-Bar: -
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JFJSXGSWYJENAH2C4ZTRYEADYCVPNAYJ
X-Message-ID-Hash: JFJSXGSWYJENAH2C4ZTRYEADYCVPNAYJ
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:11 +0000
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 00/10] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JFJSXGSWYJENAH2C4ZTRYEADYCVPNAYJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E0B03532542
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[26];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.763];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On 5/7/26 10:50, Ming Lei wrote:
...
>>> BTW, inspired by this approach, I adds similar feature to ublk via UBLK_IO_F_SHMEM_ZC
>>> which can maintain long-term vfio dma mapping over registered user-place aligned buffer.
>>
>> Interesting, just too a glance, and it looks like what David Wei
>> was thinking to add to fuse, but IIUC he gave up exactly because the
>> client will need to cooperate and that could be troublesome.
> 
> Here the cooperation is minimized, maybe one shmem/hugetlb path, or memfd,
> and it is one optimization and opt-in, and fallback to normal path
> if application doesn't cooperate.

My point is that with widely enough adopted interface the user will be
able to opportunistically use it without knowledge about the file, i.e.
not knowing whether it's ublk or something else. But as you mentioned
below, it'd be cooperative interface in either case.
>> Should we try to push everything under the same interface instead of
>> keeping a ublk specific one? Again to the point that it requires
> 
> If generic interface can be figured out, it shouldn't be a big deal for
> ublk to switch to it, and the usage is simple actually.

Sure, you'd just need to maintain both as there is a mismatch between
interfaces.

> So far, ublk supports both FS and nvme block device.
> 
> And cooperation can't be avoided for this usage no matter if generic or
> driver specific implementation is taken, for both fuse & ublk.
-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
