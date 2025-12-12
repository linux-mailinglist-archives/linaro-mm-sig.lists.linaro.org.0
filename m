Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEXtKxUE4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9334112FC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 185F740F77
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:45:24 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id BE2483F9B4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 01:56:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=d2nrAS+u;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.214.171 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-29ba9249e9dso9846075ad.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 17:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765504571; x=1766109371; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZJsiZe/XqcKJjkVqYeKzXPFPwj1/tSmTc15CXhIwXUk=;
        b=d2nrAS+uM7LahrtqxNkIOyuwmc695aHmwsFBgcfzKeJj1Pn1m0tTrFqw7dLjiUImWZ
         mi+QiAr9JdcDyACH9yVSYjs2bpH2tWfv1lXQXb0MuPbutiBmxzKykHsYKcWWf1Vi6sAQ
         7AM99U0qxQuwOrmTe9Rl6mUSG70AiM3eBSS5U1GpqXTmfd7wO3HSRf3A4E8p4EZHqgqP
         aR4u61UCS4SACac0GBFwGaLKjnDV+E5MjolY4F/zNyyQcSz3oaXdFUATvd/Jo6MFDAgu
         AqPucpOFVYShoQy+cyTTlBjM38xTyCeevbz3gQcOehTHAsHqfTYF83R6hDD7qf1h02py
         AAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765504571; x=1766109371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZJsiZe/XqcKJjkVqYeKzXPFPwj1/tSmTc15CXhIwXUk=;
        b=M8qfyc8OPHCbgDpYtNewBN/KaSBEK8EibEUc2eHI3bxnMGGIqoxb2x8G9+r5ceTFtO
         ljPkKNgtesnerorYmzdR4gdGF1Ub0ryhGVFTrBsFCkX0VTK/SO4AQkR66s9N9fX4xeCl
         S+DBS1rUM30aogNxUQXK1W4IZRkbol3+XzIHXJd1XHwQm1wx4F6fXZb1ViqVx+MBxDgT
         g+qbRynCplX76iwkoFq+Ri09mQRvTM91HWQL4Ou5TS1emggdb+fRlHJ4NGvPBCEfPinC
         8ojT5Hy6LnZsxITeH2Y2lt8g3jLnpm8hnSuRTEDeRwELTCOGcpA3fHGaWG3Kiu7bnbOG
         tY8w==
X-Forwarded-Encrypted: i=1; AJvYcCUQaBM+ZxzOkGqVBavoDxx3eVPBHe1lTNaEgd++3cUscULGZqJUJhsp4tgBMAPX+Jj/WuMB/3ji7tEbyUk8@lists.linaro.org
X-Gm-Message-State: AOJu0YyGac8GpRrZl61XAtW0yna4rIpC1Sitj3AUEDanChQ6DQYPr5oS
	vlqjSOlCeoB0eu7HzjtUfNJA5Z7nihl0G84tmcTWxjn/YhPRwmVS9aSv
X-Gm-Gg: AY/fxX65ETGuSPFHkkQc8OKT2gli+ZKsdh8QwHNoQu/TW6y7B7Tkozw1B9gD3W+bz3S
	Ia3BE2eddbqtxv8j30Cove+3Zrzp58s03yy5oZ22I9wbjvFvq/cZg+Gr6yMneQuOfi1Zt/j15Ni
	cYFQA4li6Xmlv0gDM+NFziU2KM/Kqd9WRUSlS96NbZNtC6fnV6UICoj5bcJm77S/a0IwKbaOFg5
	erjPpmPvo5erJ67EpjpLAX5urqALr3rHTRJ42G1Nnqx59CTrhxwto+U7jYoasDCf66QLLLm7Jb9
	5YamH/XhSByfjI4Whn8jOWOxD+lCabn9lJ+RTo4YjTrNfTigr2HLwIrKWbNSwBB+OEaB9jcARDT
	oPdzwvJnb2zD8RQ7FIWrlio3K3rzWHanX4o53pheKH7v8/3WbzCkOjXhtxDCYDRBxNoxeBvhJoN
	MH+PrHNKbfUZBKx8wekUsXHP/ecsS7vPT6MbmqF49r9MS045elnjFpCGM5QG3Y8fVYEEHu9xHG3
	rziEzijrHyWRW4pDYo++TNHLrLWdMH3IT4feKgPSQi7xiZB0Fg=
X-Google-Smtp-Source: AGHT+IHrNZHNZ799rRWGx+LvO7XaRwwtcVkWXSf4q+3pQ1pJSMCA4DafAXljIyZfD2BV+qpIbTHyew==
X-Received: by 2002:a17:902:d4c9:b0:29e:ba45:350e with SMTP id d9443c01a7336-29f23cd48c2mr6283765ad.44.1765504570758;
        Thu, 11 Dec 2025 17:56:10 -0800 (PST)
Received: from [10.200.8.97] (fs98a57d9c.tkyc007.ap.nuro.jp. [152.165.125.156])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea016ac2sm36260535ad.49.2025.12.11.17.56.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 17:56:10 -0800 (PST)
Message-ID: <eb72c089-a6ba-48df-a215-af35d5dd808b@gmail.com>
Date: Fri, 12 Dec 2025 01:56:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
 <aTFo-7ufbyZnEUzd@infradead.org>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <aTFo-7ufbyZnEUzd@infradead.org>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4YRHJBFXZEE4O3IEBSUHDN6QDH7PJHFU
X-Message-ID-Hash: 4YRHJBFXZEE4O3IEBSUHDN6QDH7PJHFU
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:48 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 05/11] block: add infra to handle dmabuf tokens
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4YRHJBFXZEE4O3IEBSUHDN6QDH7PJHFU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3013];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email];
	NEURAL_SPAM(0.00)[0.371];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5F9334112FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/4/25 10:56, Christoph Hellwig wrote:
> On Sun, Nov 23, 2025 at 10:51:25PM +0000, Pavel Begunkov wrote:
...
>> +	struct request_queue *q = bdev_get_queue(file_bdev(file));
>> +
>> +	if (!(file->f_flags & O_DIRECT))
>> +		return ERR_PTR(-EINVAL);
> 
> Shouldn't the O_DIRECT check be in the caller?

If the interface will get implemented e.g. for net at some point, it
won't be O_DIRECT. If you want some extra safety for fs implementing
it, I can add sth like below in the common path:

if (reg_or_block_file(file))
	// check O_DIRECT

> And a high-level comment explaining the fencing logic would be nice
> as well.

I'll add some comments around

...
>> +static inline
>> +struct blk_mq_dma_map *blk_mq_get_token_map(struct blk_mq_dma_token *token)
> 
> Really odd return value / scope formatting.

static inline struct blk_mq_dma_map
*blk_mq_get_token_map(...)

Do you prefer this? It's too long to sanely fit it in
either way. Though I didn't have this problem in v3.

  
>> +{
>> +	struct blk_mq_dma_map *map;
>> +
>> +	guard(rcu)();
>> +
>> +	map = rcu_dereference(token->map);
>> +	if (unlikely(!map || !percpu_ref_tryget_live_rcu(&map->refs)))
>> +		return NULL;
>> +	return map;
> 
> Please use good old rcu_read_unlock to make this readable.

Come on, it's pretty readable and less error prone, especially
for longer functions. Maybe you prefer scoped guards?

scoped_guard(rcu) {
	map = token->map;
	if (!map)
		return;
}

...
>> +blk_status_t blk_rq_assign_dma_map(struct request *rq,
>> +				   struct blk_mq_dma_token *token)
>> +{
>> +	struct blk_mq_dma_map *map;
>> +
>> +	map = blk_mq_get_token_map(token);
>> +	if (map)
>> +		goto complete;
>> +
>> +	if (rq->cmd_flags & REQ_NOWAIT)
>> +		return BLK_STS_AGAIN;
>> +
>> +	map = blk_mq_create_dma_map(token);
>> +	if (IS_ERR(map))
>> +		return BLK_STS_RESOURCE;
> 
> Having a few comments, that say this is creating the map lazily
> would probably helper the reader.  Also why not keep the !map
> case in the branch, as the map case should be the fast path and
> thus usually be straight line in the function?
> 
>> +void blk_mq_dma_map_move_notify(struct blk_mq_dma_token *token)
>> +{
>> +	blk_mq_dma_map_remove(token);
>> +}
> 
> Is there a good reason for having this blk_mq_dma_map_move_notify
> wrapper?

I was reused it before and reusing in the next iteration, maybe
v2 wasn't for some reason.

> 
>> +	if (bio_flagged(bio, BIO_DMA_TOKEN)) {
>> +		struct blk_mq_dma_token *token;
>> +		blk_status_t ret;
>> +
>> +		token = dma_token_to_blk_mq(bio->dma_token);
>> +		ret = blk_rq_assign_dma_map(rq, token);
>> +		if (ret) {
>> +			if (ret == BLK_STS_AGAIN) {
>> +				bio_wouldblock_error(bio);
>> +			} else {
>> +				bio->bi_status = BLK_STS_RESOURCE;
>> +				bio_endio(bio);
>> +			}
>> +			goto queue_exit;
>> +		}
>> +	}
> 
> Any reason to not just keep the dma_token_to_blk_mq?  Also why is this
> overriding non-BLK_STS_AGAIN errors with BLK_STS_RESOURCE?

Yeah, it should've been errno_to_blk_status()

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
