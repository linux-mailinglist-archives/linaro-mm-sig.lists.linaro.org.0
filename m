Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLPUFf8D4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BB74112C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F27E844CF8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:45:01 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	by lists.linaro.org (Postfix) with ESMTPS id 81C693F6BF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 01:02:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=N06uGgPW;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.210.175 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7baf61be569so801723b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 17:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765501320; x=1766106120; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PiqT1y0DQKTCKplE+X4RtztJVQKRqPD52kbRIZIB4Kc=;
        b=N06uGgPW8RqkUDAxZg1cyNroZhHfhHYm5LuFyBJCC+5qluHAsyix0kIGLxqH6tY35W
         IWwUi9nrTrVm6wWHXG1OewIvzCnlaGnKnvi1GVGU3ULkXLQ6wwb6Xfge7UT3wP2uZn/I
         tUcw7hDXK3UgQvSRXuJPowBKg0rjMFeyZb+UlMQsm1ta6BdrmpqzrStUZOHjvK9xAwu8
         0oSOZg+UEj0pMrIx76SqxjOa+0ivTGdX0lUba92X32Aee1idqGR23ia46xjzKJCLl+cH
         IkXG/WVI9couy8VsvVKomCoZl3Mot+/o5pGG8XFrnCFVvSW+ccpHO57rarwUuogh1abO
         EEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765501321; x=1766106121;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PiqT1y0DQKTCKplE+X4RtztJVQKRqPD52kbRIZIB4Kc=;
        b=xOZEmrXVgYKOwT5MYm21BJTKoqbJJJBhvcdDl6DsfskRQYC2rG6wjTxlWUq+ZMLWTg
         nlui9S2PC0S4kzk0mysHqjK+ilS/gpu013YZAMVxLSYL+n7neSdsRBvKXGU7piTsdJnC
         1fboZYQ21mitKEFz0kwXhK5MCydPMueJo3cFTWLxqGzlUzMM8P7Y7IcP251Yswky26C9
         3VD8Q7PeSqQcZEBlniV9irB0DVcWbTc7CNMOJtOxmpO4PA/PC/9BcoBszvBiTsdgu3RT
         qOf8dst4/XfQGt40ch78kxeEgGBCb0JQ6sfwQQcixA1JLc3mS6PR/TKjCl7jhDbD/4li
         Y8OQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2wgWaqxE7VY9XKrt4Gtwn0DYtoT+qPiT9fOtPNzPlCPJCiKEUPWgAGj9qQa9abEdoBUkD5fAiBxHZyeGv@lists.linaro.org
X-Gm-Message-State: AOJu0YwwV9Wqu8lHU6ae5zxkTgKecqONAOc/iKFb9deZct5mbfVYYJvy
	+GsNV/sOySlsPr0IGjzfdIHl1iuBl5f40Jyour7zUyF/64pu8OfQdGiU
X-Gm-Gg: AY/fxX6ck0ALjV3x8em1JLOQ7XysWbUAoko1Lnk7NAHI7Iz7kie1yt8lAmIoyMSjFj3
	1RujPEH2d3ovSJDi7imkSedt9U+RGvEV8L/G7E40GBfwn9yzRoSkQoCWRzAZxdKX07eEW9Wg1jr
	qb2yHQKdGTgzhxIicD2/zmJga6I5iTnWyamVmoO5Xv8yXNwS30+I120MsdPknh9uHsevdJrrT3B
	hYeq6dWWcKBOzFIUdPqt3gGCI+NAQnqsxMV5CIPbE1URr8goYoFc4o8hejxUyIWDzYotj+ZcJOC
	+Dc8EDaknAEti6ovpGDsItCQxjW1Bw9uGdz7iJbtOAjhovZtj91GmxRdrblm/eFF0UkyxyT1ufj
	RHHCM0VzO1h2FXvUPmJH6bCA729pGP79H6YxL5dANCRPmvO7GsR5yv/CBbhVWsaHQHKeE4M3DNf
	8B0NAu0GdsN7MkMwOihDEpn+wO8GzPHZz8hMTX5X401rCriivoN4bT8L6X+GU4FPsyQOLREs+pG
	oRph9iB7IyLrGcA9R8kcLd0JHtGDeaQMqqdH6X1sw6xn5877aN3tlqOo1t+bA==
X-Google-Smtp-Source: AGHT+IG0+NAokoVmG4o76ltchxh72cgR5S6czK8w8NPqiA4lCkRSaBrc+e6H5PWtVLyiGmX8KUNYIA==
X-Received: by 2002:a05:6a20:1584:b0:35d:7f7:4aac with SMTP id adf61e73a8af0-369afa01e9emr370191637.47.1765501320420;
        Thu, 11 Dec 2025 17:02:00 -0800 (PST)
Received: from [10.200.8.97] (fs98a57d9c.tkyc007.ap.nuro.jp. [152.165.125.156])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c2b9d8a2bsm3358325a12.27.2025.12.11.17.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 17:01:59 -0800 (PST)
Message-ID: <fb1abb05-ac8a-4130-a6a9-1a1089df441d@gmail.com>
Date: Fri, 12 Dec 2025 01:02:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com>
 <aTFllxgsNCzGdzKB@infradead.org>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <aTFllxgsNCzGdzKB@infradead.org>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZR2JO5WORPU2AE6RJ6QQKHTAYJKY3P3N
X-Message-ID-Hash: ZR2JO5WORPU2AE6RJ6QQKHTAYJKY3P3N
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:47 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZR2JO5WORPU2AE6RJ6QQKHTAYJKY3P3N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3014];
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
	NEURAL_SPAM(0.00)[0.320];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E0BB74112C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/4/25 10:42, Christoph Hellwig wrote:
> On Sun, Nov 23, 2025 at 10:51:21PM +0000, Pavel Begunkov wrote:
>> +static inline struct dma_token *
>> +dma_token_create(struct file *file, struct dma_token_params *params)
>> +{
>> +	struct dma_token *res;
>> +
>> +	if (!file->f_op->dma_map)
>> +		return ERR_PTR(-EOPNOTSUPP);
>> +	res = file->f_op->dma_map(file, params);
> 
> Calling the file operation ->dmap_map feels really misleading.

agreed

> create_token as in the function name is already much better, but
> it really is not just dma, but dmabuf related, and that should really
> be encoded in the name.
> 
> Also why not pass the dmabuf and direction directly instead of wrapping
> it in the odd params struct making the whole thing hard to follow?

I added it after I forgot about the direction and had to plumb
it through all the layers. In a draft of v3 I had I already
removed it as dmabuf is passed with the token to drivers.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
