Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNtgMLoQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B43411CF2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FDB444BD7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:21 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 1EDBD3F7F8
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Feb 2026 15:03:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=cQtsrRtO;
	spf=pass (lists.linaro.org: domain of anuj1072538@gmail.com designates 209.85.208.41 as permitted sender) smtp.mailfrom=anuj1072538@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-658cc45847cso3284001a12.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Feb 2026 07:03:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770390206; cv=none;
        d=google.com; s=arc-20240605;
        b=DhUi3nGKqlfpvUFPo3RT7EfjvoI97bGkSy+q8i8GHKXIjSHOA5JDHy1vm1BgNYxd8A
         kpO306lzw8OJYT2wbu7KCRaoUcpR801929QAubuDWudJH+mxzpyh3KMd/FXgHax6wMnG
         3x57XwaxKjGX/i+VcBNJNx+kpujn2RY3JdcJXXgq7JmWIISD/SDgobbBOfQnL/ZAAElB
         o3e6KuOMzJWO/9H+AQIz/O8oJlDnTcSRmXD9kVt5SXf/dJB14Kf2iJt0dfosWFUs3A3s
         MHg9dj/vdeRNBumew/UB4pEkUmtBsLay/dsgsV0ifccUeCF9DpFZ01b3CXUxCYwG1R9q
         z6lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cbNYgILYh6T0L6GkBJIakhSOuBf8eodDKh7A+HpUyVc=;
        fh=A+U+9mXYo8WWuOJz5b8X3ddwD6/XRwiNOuRr4BWqzFM=;
        b=C94ZzyrjmJzPCIufTjCDYBt7NOz/R7mzgEY4P39Ox+DOU6OpQD1eDLP79OEFa8A3pJ
         5mXo17OSjcAJZDgT92jQxPCgCvPL9K5QK1FhareEV+E3gRnG4b6VS0TszvufAu8+O6aY
         lwYf4QkCcFd0F+tjbWgt8OPbBBuJ+NIJ4MIDXTR9a+JKeM3zY6v1ryZx6DU6q0WBCIRo
         aIkcErDRaKODo65iuHFGkle76MW6gyi7N6qlHm3S01dkiRkad5KNDw1D7Zh5mqRTz8dA
         p2KxSIyE42W3ocXU0FdBokmqAwUQbjGQxdVVEmnBlVwVFphBUbVBpywOefG3NrTeoMSp
         tdzA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770390206; x=1770995006; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cbNYgILYh6T0L6GkBJIakhSOuBf8eodDKh7A+HpUyVc=;
        b=cQtsrRtOB/qOc1k7peJVO8jzY3p4bQWZh8h7bjxVlhyMG3HIMYY1aKi6yCJJOEi9Eo
         nraYTUYm9vyWLq7PvZ0psjK+lUdXdAL/TWrzzts2p47LXzMuLe8WzxUeS5EdGe2KCIVD
         kE1x++dn08J0eo+KriXpMBYE0RtiyuBmoM0ax1GkN0CvE+s0JJ/n/I0FLiQeQI9wjkPT
         KNSyURCklHD0LgxtQ5msM0E6MQsSWS9LLZkYZQp3dcP15TWLb8rmlJrjAxQxZhBP8leB
         zuKKZAtff//sU/TN1HZ7SOY4YcyX2CmnOXH6RhpngvwlZP77R8t9rQodY2UC+63gyefq
         39cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770390206; x=1770995006;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbNYgILYh6T0L6GkBJIakhSOuBf8eodDKh7A+HpUyVc=;
        b=l5f0WFN86Bl7P/UIJ9pWPV0KPJI+UMTpNjl4uWVTGa2jnJD5lQdwJuT7FPEC7n1XlV
         6Tgp2urpNmxNqT7KcvwnnMwzz8GFpDW/Yfol5+IeaPB29DVIAkcN4iyFcHJNWOZWf2/a
         x8w7xxxmsL0gjsI77nObpCRF9cdCXsV3djZZ4x+WBPnZQsWP5Riqr5uICcccRn7eVGP5
         NEVuacuJfiLypnUwcBmWs/c/Lh+dUeRjfSLX/V0T46fp+72c2YYeOBRuAtgbG5yHTmN7
         SpgH1O1gfg2nfnkrgf4FP+T8KR4jFbzOiYHiGVVRqjYEeXRwgpIbtwAKmuzNczZjv7am
         N/1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUtgyl+Xfsgh1v69aH4ttHfZJ0U2sppmPTHIorTJcggYFZgT7ulNGgSuBwV3DlaZdbw2l5xMLBmfOIIZK0d@lists.linaro.org
X-Gm-Message-State: AOJu0YxGZ5TxvUM8OeMtskZaRQh63k92K+iYaaFYVDC+Hbx+sOizFF5I
	ZTo57UD18Hpu596FbY/OvA80q5d/pAWR6dC63H/QM12zUDBL3HufKuBagGwX44Kp+myvm5BFgSd
	BDtQXqTxfu+XLU6GDoqOh/fxRayseaA==
X-Gm-Gg: AZuq6aJ/oNQ1zDoVC+IhHqpg5iChE03Tv8y3WuPJCm+zJE4iu/YoFh8CYuMJVK1z+IM
	qs2QEP+Grunujm2Zbqris1cy9z+0lx65hW1b3O2xokuy+yhdoLwnSSeAAD884hboUtaNgGiqFXn
	Vl6X9HKj66V6U0JBDZIKqX5aoOQxQKAIvLz5YyDMStiH2QbT2YYc/3q3sR6Z0PObh7rw4VCuUPH
	MKRQez2XC/3zSixheGVU73d5HcFpd5SoLNGLFtfR3DAOJ6QVShhnR4t8T90d6Qc4LDl9QvMO6Wn
	mq1WYhhE/EhPci6A6u5Wc78e/S2dX/+cGR6cUKfbPRi9iCFTXZK7LIT9DQ==
X-Received: by 2002:a05:6402:3583:b0:659:4383:c491 with SMTP id
 4fb4d7f45d1cf-65984193946mr1569160a12.33.1770390205748; Fri, 06 Feb 2026
 07:03:25 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763725387.git.asml.silence@gmail.com> <f57269489c4d6f670ab1f9de4d0764030d8d080c.1763725387.git.asml.silence@gmail.com>
In-Reply-To: <f57269489c4d6f670ab1f9de4d0764030d8d080c.1763725387.git.asml.silence@gmail.com>
From: Anuj gupta <anuj1072538@gmail.com>
Date: Fri, 6 Feb 2026 20:32:47 +0530
X-Gm-Features: AZwV_QgZhDOY8h13FRDtMZqnV6_xaqir1VOWq2MTchb4BXyrN5R68VQhosU9bGY
Message-ID: <CACzX3Av_g5g=ssfSjHzkosEj7DMU=+xY5fpdU-zYGYc0cUWPSA@mail.gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
X-Spamd-Bar: ----
X-MailFrom: anuj1072538@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GQPPJ2UKTMN5KFJMAQ5VFYICPUYF2FDS
X-Message-ID-Hash: GQPPJ2UKTMN5KFJMAQ5VFYICPUYF2FDS
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:07 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 02/11] iov_iter: introduce iter type for pre-registered dma
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQPPJ2UKTMN5KFJMAQ5VFYICPUYF2FDS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[1657];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anuj1072538@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.982];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 99B43411CF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> +void iov_iter_dma_token(struct iov_iter *i, unsigned int direction,
> +                       struct dma_token *token,
> +                       loff_t off, size_t count)
> +{
> +       WARN_ON(direction & ~(READ | WRITE));
> +       *i = (struct iov_iter){
> +               .iter_type = ITER_DMA_TOKEN,
> +               .data_source = direction,
> +               .dma_token = token,
> +               .iov_offset = 0,

nit: iov_offset is getting below too. can get rid of this one.
> +               .count = count,
> +               .iov_offset = off,
> +       };
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
