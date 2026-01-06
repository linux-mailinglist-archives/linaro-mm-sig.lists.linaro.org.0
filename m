Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPBiFzcL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:15:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC939411802
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:15:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8F66405CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:15:49 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id 467253F83D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jan 2026 19:32:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=hXI2rwLu;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43246af170aso101137f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jan 2026 11:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767727956; x=1768332756; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A5ExmjzRt11H31bMlKYOhViS+00PGFmBw8wszOB9k6Y=;
        b=hXI2rwLuiYW//kiWgR5dZNA7dVHAEpXMpHgLKPBG0VMPULt6vd173mTFdafhVfL8Mz
         qlHxOqHsHUdRKu5fXoTrrEHjnczY5tPEh11ZxZJWjtNXZDurZatEBwbKYDB+c9r4ln7q
         P7XKjiTQjiY8Tfli//0014NO6vhX/39l2W8JAQcsadd6raSoPED17huQHYwuPvE1Yo98
         KsZ/8yy7BxivGb4YFbrS7ezvYSY3r3p8hcMQuJ+9ISnVf7WtM65/onUylTqBux5xQ22Y
         wCT8VBEWeNp5q/LdtbXQVxPQ6gHaKXj1guLbsq7KxJTdoFG6gq1xvqAuvYJ/xQf+GoP8
         spNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767727956; x=1768332756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A5ExmjzRt11H31bMlKYOhViS+00PGFmBw8wszOB9k6Y=;
        b=YFkVkzKocOOO187MDx+lYRNsaW7O04cM/RsQ5uHuJTqtnON5TqfqgP2ZfRV1s84ZdO
         x2GbXplExoYmfV/norlrGBug/HTp9HCv8ku/eoyyJelSa3R2z9/4W/YbQ3SW9t3M3K3z
         j35MHTgAstQ6BX7FZNdJwsKqDclivEdpN0WQlvPkuJfI6o0Z3I03CRA46lsSwSLh0as+
         gjXP3ewS62Il5HKvU0OoHqByjzOAe42MqgAV5x/kndKI9JWF6sAaxwlfDB46xYaTOANv
         Jm0VA391lmvYu7yQb5PAXlHF1MPucaisbAJdj3ChUbPOEv4VUz7Uf5DSfrdFmQIG3R2E
         UZuA==
X-Forwarded-Encrypted: i=1; AJvYcCWkHNmtOpfpEfmHKukENL3hifjLGTi9v8NjQDWq3lLV1GyA+KZ0W3eAeoqFpsAHgNMTbV6/pajVzMU76Xk5@lists.linaro.org
X-Gm-Message-State: AOJu0Yyc8R6y+MmPYD2MpeTjUEQbqV//hF1OAIIFr8Z6xYG5sx03cF45
	kx0ULOQQFWLavHJwkE2bSrkzguefqP1qJ59aTlhenPwrVyfz0V/bXkqP
X-Gm-Gg: AY/fxX4qzo0eQ68aUIO3ubYHVzLxseNddh0HuF1tePH8Vri4yv42LNyg3fpKKDcQcDa
	4v6+HHIk1hpGGYvGTmbaL3zNCnO8j3s4yzT6/nFzDzKkvgJLR0S5qze+CxjQBHdiPj9ZSFL5Q4H
	h0rJIBf9KdvPvF0Jw+ky/60Zdg2IoHbkPo/U7McHdr16fk5BX9+XWrkX+J9Xxb4MZ5eoilBrFBy
	5lwo2QJWrEDfUBzc8f1rEqZmVx7jVpKmu2wIARCp7x07Q9qSv79ca+DPqc5Ucnre6K7XCnawz9+
	Fpzh/XJ3S7ZwZOgwdqD75yhK0qWqb2AilgKORPs6hAxeUoD9zUV1DwlHIYOqChNkjzCqOdV0nYA
	9yaW98GmmVr9zfaBn+MLTiHNgGgLTvEQmYVwm9v0JHp9RGr/cB8kgR5G5V0BdrZCT+GJFamG296
	J8MnMKAt2dfvaHwfW8AVAz7c0N/5973xszyplQdCnEzeOpXrgf38HxBiTGWZuWEgAZT5Cr/quJt
	cLDHbUy6BDAlJYpMbUgKLxtSj4mW2SDFJ0BKhg05HN8nDjH/yKUqTVj9PxBNctH
X-Google-Smtp-Source: AGHT+IFIh4UFL5ktKvizijTqM9ls5ooe70zcSXJi12HfQ2Im3m/BSeK/gwa0FGVa9q2qDIVhMmmdpg==
X-Received: by 2002:a05:6000:3104:b0:431:cf0:2e8b with SMTP id ffacd0b85a97d-432c3778e47mr273696f8f.29.1767727956009;
        Tue, 06 Jan 2026 11:32:36 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e6784sm5933503f8f.19.2026.01.06.11.32.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 11:32:35 -0800 (PST)
Message-ID: <275fdece-d056-4960-a068-870237949774@gmail.com>
Date: Tue, 6 Jan 2026 19:32:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ming Lei <ming.lei@redhat.com>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <b38f2c3af8c03ee4fc5f67f97b4412ecd8588924.1763725388.git.asml.silence@gmail.com>
 <aVnGja6w4e_tgZjK@fedora>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <aVnGja6w4e_tgZjK@fedora>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5WIOLYNN4OSKH4XNLXKQXMIWHCIYG2QN
X-Message-ID-Hash: 5WIOLYNN4OSKH4XNLXKQXMIWHCIYG2QN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:46 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, David Wei <dw@davidwei.uk>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 10/11] io_uring/rsrc: add dmabuf-backed buffer registeration
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5WIOLYNN4OSKH4XNLXKQXMIWHCIYG2QN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[2396];
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
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,davidwei.uk:email,linaro.org:email];
	NEURAL_SPAM(0.00)[0.315];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: CC939411802
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/4/26 01:46, Ming Lei wrote:
> On Sun, Nov 23, 2025 at 10:51:30PM +0000, Pavel Begunkov wrote:
>> Add an ability to register a dmabuf backed io_uring buffer. It also
>> needs know which device to use for attachment, for that it takes
>> target_fd and extracts the device through the new file op. Unlike normal
>> buffers, it also retains the target file so that any imports from
>> ineligible requests can be rejected in next patches.
>>
>> Suggested-by: Vishal Verma <vishal1.verma@intel.com>
>> Suggested-by: David Wei <dw@davidwei.uk>
>> Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
>> ---
...
>> +	dmabuf = dma_buf_get(rb->dmabuf_fd);
>> +	if (IS_ERR(dmabuf)) {
>> +		ret = PTR_ERR(dmabuf);
>> +		dmabuf = NULL;
>> +		goto err;
>> +	}
>> +
>> +	params.dmabuf = dmabuf;
>> +	params.dir = DMA_BIDIRECTIONAL;
>> +	token = dma_token_create(target_file, &params);
>> +	if (IS_ERR(token)) {
>> +		ret = PTR_ERR(token);
>> +		goto err;
>> +	}
>> +
> 
> This way looks less flexible, for example, the same dma-buf may be used
> on IOs to multiple disks, then it needs to be registered for each target
> file.

It can probably be done without associating with a specific subsystem /
file on registration, but that has a runtime tracking cost; and I don't
think it's better. There is also a question of sharing b/w files when
it can be shared, e.g. files of the same filesystem, but I'm leaving it
for follow up work, it's not needed for nvme, and using one of the files
for registration should be reasonable.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
