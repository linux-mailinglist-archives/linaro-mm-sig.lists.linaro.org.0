Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEhtFzHqCmql9QQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:30:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EA04D56ABD5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:30:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F220B406EE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:30:07 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id 3659740475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 10:29:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=egu8u2yj;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.42 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-43d7e23defbso1089092f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 03:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779100196; x=1779704996; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yBM/MqSlhfscJgewJTDJnR/WZOfF3ZaH9qUvK+mYr0I=;
        b=egu8u2yjoix3XZnnqXz5xOj/P6+JMSNlDblOuQaNgas4LwD0bnFu52qRmZi9UXlYzb
         uN0gcNWzbySZf6zOg1XGx9LOx94lagBrNGmC+310cW5cfhoCIq0xlAYNGDypd9nTfkqI
         EoRm3ebcGr9HialO0hlT7A/lOz89LL/2cgusjYIScHRNlA4dQNpMoPeFMEnQ3cv8sb52
         gTw1Tb7mgh38EyRB0AeCvQoYt1LSx2l1tSXF34kFuZhQjoXM1NCAR5TNeaQDRowGukj9
         F5qCj1XvnKSwAsOqEd5rv1NLq7tW5b1r2FV1hk+TRg8X3QHa1g8KNRcBEWoX/M7SIE/V
         mOYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779100196; x=1779704996;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yBM/MqSlhfscJgewJTDJnR/WZOfF3ZaH9qUvK+mYr0I=;
        b=QPpuOuwSPXP/EGBrRhZGotJ0+p1XtG+YwSEaDuBi9Y0gUJWxCWwtIe6tYzMp83UnH2
         LfnlJP9Ox1nCKBhb046giNbWXA6YpcJav45oG0vGmgpiHsAu7R1gm5Mff3oewcabS6fB
         Mu44jpLCu5qWicSChks0qe2SpqLHbCjhKASYFty/8sAWQ1IYxw0vo/9DzPy//vSAiVJc
         iT6a6wgn8ZMKR1FExpDuFEDb4Rb7joe9ocpWzJa7JTs3h0r7oPtXvQHJgTvtLh34tzAl
         F+V7DunhmbovBoOBxrW4dJNLBhe+ft3OTDC8+1Bz+PlXHg36tSd97Oc5cDsQzS+p7ixu
         VzhA==
X-Forwarded-Encrypted: i=1; AFNElJ8w5jr9xjrAslksTnA7CK6FBXL9hIGbuPpXpY7VCKIyGdeaI8AHMBv/0E55vco7XTvb0o30sW7Lv/db9jRJ@lists.linaro.org
X-Gm-Message-State: AOJu0YyMGyWS6kncpH94H2x3lGaMk8unqxCAroqKPdUemGBIJsOoye54
	mLA+muaSkm0gsdWJtDuO/OwsC//QKlreb3avrb4wu9+eUoQrpj532P8d
X-Gm-Gg: Acq92OGwiyu8VkzAMGzxPMjGPFNcHk8g54v+Eje7VKWKQ7Y5XxDzr0pk0gv7b4b+MLN
	DPxyZG8rgaDQZAoXYMrEBg6T/rhEDq74q8ZoF0FEEcwRxC7Yk5Y7UZzVBSkgoTq1Bs1D80ezbjE
	myTDDKvwiQ8NxdVgbS+xtpDpO0NoXogENMVD+/fBo2xr+J3Mgflz6Ws94AqH6yY+A/pXJjr+dRq
	wReuk4OrK7OtxJKSFiv17YdtRQhjP/Q+5w0Bihqt6Br5bGk/Oa3garVnHBupLVVSCdZLL1N4OT3
	ilAUOPyfULj3S0AaIKYiksDIehZJsG+IegzyyYi4OjCuArDbyf3LjzmUbnQE3CbvaXqlikTMoQZ
	SDXTiiu/F7YAPO2WtM5W8l3SIRWVZDfrKIPpveHowfMGxrdMomROanK0YL2bPfMn+SKdUXjO7Ll
	jnhfRhxbMaY3Ni0Mx4fA2K0IbX9jRu70efrtAnZBoK63XVrOb8BGFqBm4FSqCLnRBNYvOnuDomx
	ozlJOOhJ4v/KQN+eK0gH7iMJ3UFQIFAzT2kF+a5BBwdLKZ+cgqEx182G0A=
X-Received: by 2002:a5d:5885:0:b0:43c:f7e5:817b with SMTP id ffacd0b85a97d-45e5c5cc2b5mr22613508f8f.19.1779100196106;
        Mon, 18 May 2026 03:29:56 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325:77fd:1068:74c8:af87? ([2620:10d:c092:600::1:ec20])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da15a6454sm36537426f8f.34.2026.05.18.03.29.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 03:29:55 -0700 (PDT)
Message-ID: <24833f76-2289-4859-86d1-9215b11a1258@gmail.com>
Date: Mon, 18 May 2026 11:29:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Pavel Begunkov <asml.silence@gmail.com>
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
 <20260513081929.GD5477@lst.de>
Content-Language: en-US
In-Reply-To: <20260513081929.GD5477@lst.de>
X-Spamd-Bar: ---
Message-ID-Hash: 6OBYDB646AMFWKSMVLV7S5PL75CKQV52
X-Message-ID-Hash: 6OBYDB646AMFWKSMVLV7S5PL75CKQV52
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6OBYDB646AMFWKSMVLV7S5PL75CKQV52/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: EA04D56ABD5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.492];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

On 5/13/26 09:19, Christoph Hellwig wrote:
>> +	if (!bio_flagged(bio_src, BIO_DMABUF_MAP)) {
>> +		bio->bi_io_vec = bio_src->bi_io_vec;
>> +	} else {
>> +		bio->dmabuf_map = bio_src->dmabuf_map;
>> +		bio_set_flag(bio, BIO_DMABUF_MAP);
>> +	}
> 
> This is backwards, please avoid pointless negations:

I can flip it, but compilers tend to prefer the true branch. E.g. this

if (cond) A; else B;
C;

can get compiled into:

jmpcc cond B
A: ...
C:
return;
B: ...
jmp C;
  

> 
> 	if (bio_flagged(bio_src, BIO_DMABUF_MAP)) {
> 		bio->dmabuf_map = bio_src->dmabuf_map;
> 		bio_set_flag(bio, BIO_DMABUF_MAP);
> 	} else {
> 		bio->bi_io_vec = bio_src->bi_io_vec;
> 	}
> 
>> +	if (bio_flagged(bio, BIO_DMABUF_MAP)) {
>> +		nsegs = 1;
>> +
>> +		if ((bio->bi_iter.bi_bvec_done & lim->dma_alignment) ||
>> +		    (bio->bi_iter.bi_size & len_align_mask))
>> +			return -EINVAL;
>> +		if (bio->bi_iter.bi_size > max_bytes) {
>> +			bytes = max_bytes;
>> +			goto split;
>> +		}
> 
> Please add a comment explaining why nsegs is always 1 here.



> 
>> @@ -424,7 +424,8 @@ static inline struct bio *__bio_split_to_limits(struct bio *bio,
>>   	switch (bio_op(bio)) {
>>   	case REQ_OP_READ:
>>   	case REQ_OP_WRITE:
>> -		if (bio_may_need_split(bio, lim))
>> +		if (bio_may_need_split(bio, lim) ||
>> +		    bio_flagged(bio, BIO_DMABUF_MAP))
>>   			return bio_split_rw(bio, lim, nr_segs);
> 
> The BIO_DMABUF_MAP check should go into bio_may_need_split.

Ok
>> +static inline void bio_advance_iter_dmabuf_map(struct bvec_iter *iter,
>> +					       unsigned int bytes)
>> +{
>> +	iter->bi_bvec_done += bytes;
>> +	iter->bi_size -= bytes;
>> +}
>> +
>>   static inline void bio_advance_iter(const struct bio *bio,
>>   				    struct bvec_iter *iter, unsigned int bytes)
>>   {
>>   	iter->bi_sector += bytes >> 9;
>>   
>> -	if (bio_no_advance_iter(bio))
>> +	if (bio_no_advance_iter(bio)) {
>>   		iter->bi_size -= bytes;
>> -	else
>> +	} else if (bio_flagged(bio, BIO_DMABUF_MAP)) {
>> +		bio_advance_iter_dmabuf_map(iter, bytes);
> 
> This is a bit of a mess.  You're using bi_bvec_done for something that
> is not bvec_done, which makes the naming very confusing.  That is even
> more confusing than the existing usage, which isn't great.  Also we
> add yet another conditional to heavily inlined code.  I'd suggest
> the following:
> 
>   - add a prep patch to rename bi_bvec_done to bi_offset, as even for
>     the existing usage it is the offset into the current bio_vec as
>     much as it is the count of byes done, as those must be the same
>     and it is used both ways
>   - add a prep patch to also increase bi_offset for bio_no_advance_iter.
>     It is not actually use there, but incrementing it is harmless and
>     this will avoid a new special case
>   - please also documet this new usage in the commet in struct bvec_iter.
>   - then just add the dma buf mapping to the bio_no_advance_iter condition

I'll take a look

>   - figure out what to do about dm_bio_rewind_iter, which pokes into these
>     things that really should be block layer internal

Need to check what that is, but doesn't implement the interface and
is not supposed to ever see the dmabuf iterator.

>>   }
>> @@ -391,7 +403,7 @@ static inline void bio_wouldblock_error(struct bio *bio)
>>    */
>>   static inline int bio_iov_vecs_to_alloc(struct iov_iter *iter, int max_segs)
>>   {
>> -	if (iov_iter_is_bvec(iter))
>> +	if (iov_iter_is_bvec(iter) || iov_iter_is_dmabuf_map(iter))
>>   		return 0;
>>   	return iov_iter_npages(iter, max_segs);
>>   }
> 
> Please update the comment for this helper.
> 
>> @@ -322,6 +327,7 @@ enum {
>>   	BIO_REMAPPED,
>>   	BIO_ZONE_WRITE_PLUGGING, /* bio handled through zone write plugging */
>>   	BIO_EMULATES_ZONE_APPEND, /* bio emulates a zone append operation */
>> +	BIO_DMABUF_MAP, /* Using premmaped dma buffers */
> 
> Shouldn't this be a REQ_ flag as we should never mix and match bios with
> and without this flag in a single request?

Do you mean adding both and propagating it from bio to req? submit_bio()
takes a bio, so we still need to set it there before it reaches blk-mq.
And there might be bio-based drivers using it in the future.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
