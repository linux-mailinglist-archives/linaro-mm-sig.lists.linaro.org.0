Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBxwNrV8BGpCKwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 15:29:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6853F534126
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 15:29:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8425401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:23 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 2D1303F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 13:29:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="qNATR0n/";
	spf=pass (lists.linaro.org: domain of david.laight.linux@gmail.com designates 209.85.221.49 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-43d734223e4so4202451f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 06:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778678952; x=1779283752; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cq+23+E96HQoAhwgeeSJr3+OJ8IJX5BGImZhad/wV8=;
        b=qNATR0n/Z4XR3YSUubA4vFr3l4oWMXk8txvxqjsJn9rA2CL/8aDDWB5LQmqqE0JUsn
         dEJtei6gMarxAqHi0N3KdJfIG/L9dD/ZYJvsBPiYC2rXqm6E/NX2TIni7Vlq+ADCnSfY
         twX0EDccRs8pAm5ldBWJMXuysDmF98n0GFSWZAVXzTyllTa5Y3m7Er5c+xy+iRS8BWYR
         y49PenFnm62pHEeN3VczhKNkLNQeah1juTdclqUgpq4d+Jk6ZVrAsy/28Ol92HHqFJ/6
         ZezqTK2gmVyMOeZO2Ber3f/1tollH+m2wbXBOhPOeLm6fIo1P/fDZ7ClXGDJedkSzi3r
         purg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778678952; x=1779283752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+cq+23+E96HQoAhwgeeSJr3+OJ8IJX5BGImZhad/wV8=;
        b=gkjIom201xNBFeNjWGUYOasb4ibzzqnZhEJ3adFkUxXTrs8H0yKWsVZkts9yhHQZd3
         UfckZUskY2eddp5JxCjceSzEdLiGzpRTaAT+rg4ZH53hK3Cn4Wust9yjbSnyByxPbcjJ
         InHptZppNTd/my54GU4sIizppFuRmp0gTJ/6GHxIF6rZHyL6DfwJVKWTYB0pzbmUVMvd
         ZBuuF5IXjs8dkjOwbAqyEQ+Vcsss2bTFhEITufB4GvV+8dP7212nyyF6xxorSRfgc303
         11fDU77qza4tAVt+u6DHkTJWhFwstjZnvcVWMPhRD46QYX0C3GjmQ3JXdRjR45uHyd3t
         RJVw==
X-Forwarded-Encrypted: i=1; AFNElJ+OV8M1K5K5FZHhSkf6rb3+w9lvDKzFMbRqMhfNcdn5NhvRPwha+wAr78V3Aft6csA0Oh901O8/OP+owfQa@lists.linaro.org
X-Gm-Message-State: AOJu0YwjTi8+p79Tli9Ibnk3gR/7gJLVOpIOizHsVpaZe/+91xBflDGZ
	SgEDbzsYAIhLJcAV4cSkMdx9eFSF/20dUA1Or6CvTRxVi58GTiZxnFWv
X-Gm-Gg: Acq92OGWAhEj+qQv5XV4MZxUqypeyTTaw/0ShoK4iJeY92Ynvs1w2t73/wAI7XoIcI9
	LEMMHloqp5dOI90skisAcGXORQI0E+szavFTo56DRNoNJHgGodOjPS7n7VF5qb2WreZovah4/Ww
	SpBn0ibcvQzJh2tUeeWUN4dDQ2kle0hJnmtg7QgGqJ4FTF8FAyZn6+8KF+gM58GS04ACQAnvPFI
	XDk3CH/lfhqRmjSkkoqcTNQEcN3KTBohnDKGgQpR/2+erKhUEzH3KVBFfNgEB3nPfQI5S4EVokO
	hH/G6DvLXFJ42xY6jzdJ3Lot0SzSiQC7LEDmIEWhqMjGXgOjEUY2jpKhORZ+NVMfY1ng3A0jAKb
	aWZ5onqypDfXYsZZNH+n0D4W+dSoiwt/op07up5xLb7kB3gnFcDOZHxpRkwHJB77eZuLoxr0psl
	Kquhueu1QMrJpA4qG+GbW/cdac5NgmmC6KBGWjhKdVX+K3rEpeTImRirlI1iOH
X-Received: by 2002:a5d:591c:0:b0:446:708e:1e8d with SMTP id ffacd0b85a97d-45ac4504a13mr9930360f8f.30.1778678951817;
        Wed, 13 May 2026 06:29:11 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4549120ec0asm40068578f8f.17.2026.05.13.06.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 06:29:11 -0700 (PDT)
Date: Wed, 13 May 2026 14:29:09 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260513142909.03ae6c2b@pumpkin>
In-Reply-To: <20260513110557.705bdeed@pumpkin>
References: <cover.1777475843.git.asml.silence@gmail.com>
	<20a233d2f35274817aa643cc0fe113707eb47e72.1777475843.git.asml.silence@gmail.com>
	<20260513110557.705bdeed@pumpkin>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: UBJLIC35HFFKCV4P7MHQKFZKNO3ATJN2
X-Message-ID-Hash: UBJLIC35HFFKCV4P7MHQKFZKNO3ATJN2
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 02/10] iov_iter: add iterator type for dmabuf maps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UBJLIC35HFFKCV4P7MHQKFZKNO3ATJN2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 6853F534126
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	NEURAL_HAM(-0.00)[-0.911];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[godbolt.org:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On Wed, 13 May 2026 11:05:57 +0100
David Laight <david.laight.linux@gmail.com> wrote:

...
> > @@ -575,7 +575,8 @@ void iov_iter_advance(struct iov_iter *i, size_t size)
> >  {
> >  	if (unlikely(i->count < size))
> >  		size = i->count;
> > -	if (likely(iter_is_ubuf(i)) || unlikely(iov_iter_is_xarray(i))) {
> > +	if (likely(iter_is_ubuf(i)) || unlikely(iov_iter_is_xarray(i)) ||
> > +	    unlikely(iov_iter_is_dmabuf_map(i))) {  
> 
> 
> Doesn't the extra check add more code to all the non-ubuf cases?
> This could be fixed by either making iter_type a bitmask (with one bit set)
> or writing an iter_is_one_of(i, ITER_xxx, ITER_yyy) define that uses
> '(1 << i->iter_type) & ((1 << ITER_xxx) | ...)'

This seems to DTRT:

#define _ITER_IS_ONE_OF(iter, t1, t2, t3, t4, t5, t6, t7, t8, ...) \
    ((1u << (iter)->iter_type) & ((1u << ITER_##t1) | (1u << ITER_##t2) | \
        (1u << ITER_##t3) | (1u << ITER_##t4) | (1u << ITER_##t5) | \
        (1u << ITER_##t6) | (1u << ITER_##t7) | (1u << ITER_##t8)))
#define ITER_IS_ONE_OF(iter, t, ...) \
    _ITER_IS_ONE_OF(iter, t, ## __VA_ARGS__, t, t, t, t, t, t, t)

int foo(void *);
int f(struct iov_iter *i)
{
    return ITER_IS_ONE_OF(i, UBUF, KVEC) ? foo(i) : 0;
}

See https://godbolt.org/z/sMz93zah1

Pasting ITER_ on the front ensures the values are constants of the right type.
OTOH it makes it harder to search for uses of each type.
You could paste _ITER_ on the front, elsewhere define _ITER_ITER_UVEC
to be ITER_UVEC (etc), and require the caller use the full name.

-- David
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
