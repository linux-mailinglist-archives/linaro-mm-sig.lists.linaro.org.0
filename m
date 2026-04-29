Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDi9GIZdBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:16:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3936B532072
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:16:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0D553F82F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:16:20 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 87E7E401E2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 15:30:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ktawOgm3;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.51 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-43d73422431so11815522f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777476608; x=1778081408; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FOLuNiA/kfZwdLV9E2p8TNPc5d6B3zFK/DDHPjJ4Ciw=;
        b=ktawOgm3nUdZyPpUEels1vi/xYLpsdnqq6z1lLLFEyaiEa9rB3SvkWc3h7QxRw5bgB
         eFmARDla9IOIuFwYpzv6KKd7X7xFBEujnhMf8IkksFlcGal5afONBIAv63W/SjuKa48J
         DQQAGUC/xOVbZSc3b0Cp5WbuqWpwYNN8gf2bI5yy6jaMn4H/Fx9TvyAL2q2F0n6sTaiW
         IZya1wxGW336NUEYIhDZrzIZb7Zmw7pBZgGudnnRJTNEMzaYNCrzveDDzbb5UqID4m1k
         lVbeYM5JWV0P8XGf0hY6wWiGe460ns+GAedSsSsNCNs9zHwz/ADP9r0PiGn50VhwHs8r
         kXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777476608; x=1778081408;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FOLuNiA/kfZwdLV9E2p8TNPc5d6B3zFK/DDHPjJ4Ciw=;
        b=ozGBUAOl3ZRXTN4M+SOJgPBTUOVfJdfeoVrTm2par73n9brC6HBurvAc7f3t36YDKw
         O+GNOvca3ahJjrNgLFjrMTTlOaq4i127AoAQK9L+4I1U7Bnh7unKTkV2x0yOYCplPpxj
         p+YBT09IG4pT/r9Zrxe0GSdkJbmXv2Wykch5cuckIUO4Z0bZOv4LGmTRBAmt7ILPvIik
         E4xppTfNfIpmF5RwBmrVsrUg6JfVnkZviQVRO5C/Rv5VwUFAQta8uavs/VEYJQM4StvM
         nf7HKYXq52gf9kdAm+9k+g5Y6pQz8VlX3Mr5iQk2EuJpkiLIivQrb8LzNKyCS9YTVE2n
         ymMA==
X-Forwarded-Encrypted: i=1; AFNElJ8J1tDgw0c+T8J0HhmKEOf18lfYLawL3hwwwfNiL3C3RNiM02NMzUf/jqKR9ByeVl7BI8f8Dxy6tA0xNgI/@lists.linaro.org
X-Gm-Message-State: AOJu0YxMrN/EmOMD+OTxT6cAyc6T7EXysJbk4CyvZk0CAWSKAsvp/1r/
	GTUAdpq1uET83v1qV66udJSgcbBUuh2l2WQTQe05Wt7TPIGI1cwmEdkP
X-Gm-Gg: AeBDievhK/3D3TFQcjgfkRbdXKLDSfIzrzTjQJ9Il31QWFgb4x7Ht+D2mT6MKiOTnYX
	j+KR+rtOLux/qw/i/Pg/KiC9mt0Nc2yI3WPbnNXGfr0GfUVOBhDh5/zPs3XEPLUERU0PLLYzkKi
	b6x8F00EiTI2pjkbkrxzr8WASB3v5JdBMP8Y4mI+mTB6/GO6TLF8v1g9N0NjrARJyQ6gkcDWFIy
	KYdaiucOjS02Fybpc3DjuVDX9xgWJt24J5YBXAaR29O65hsRH8qSnuizYELhbcovsKHV7fCE2oD
	zqFx9w3fVt7NcWaDeRXeCoLVj/hbqXEbZ5BedtFklRUA8Fq70tgvF65f/vHR5lEJdVfbUv/X6IH
	sYDtaU5nUgqcxJtQaYieDxkuew8t0XQW/gEr2Cnw1LbPQhBo07KX4PUCyo36qh2VqnnEk43bLlM
	iZs/loNrzjFBN/zZNDUzf9TT/NJz2IU+T4FjgmdxPhDh+ARz4yPXqi4znDbdJ2/9ShVteKZUvJA
	M1eYzcEWJZUCjsCj75n58htFcWDZJxv2bmOMlYTfQ==
X-Received: by 2002:a05:6000:4313:b0:43d:d037:d59c with SMTP id ffacd0b85a97d-4478eb81cf7mr7566713f8f.16.1777476607642;
        Wed, 29 Apr 2026 08:30:07 -0700 (PDT)
Received: from [10.228.209.141] ([82.132.184.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b3d481fdsm6740381f8f.8.2026.04.29.08.30.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2026 08:30:07 -0700 (PDT)
Message-ID: <46bf2c04-72ab-48a2-a8e1-9f4423eb17a6@gmail.com>
Date: Wed, 29 Apr 2026 16:29:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 io-uring@vger.kernel.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <cover.1777475843.git.asml.silence@gmail.com>
 <5cecb1157ab784f9f303a91449fdf11b03aa6002.1777475843.git.asml.silence@gmail.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <5cecb1157ab784f9f303a91449fdf11b03aa6002.1777475843.git.asml.silence@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7HQQGVZAA4DGACHUFN6XN2G6RPF3ZMSZ
X-Message-ID-Hash: 7HQQGVZAA4DGACHUFN6XN2G6RPF3ZMSZ
X-Mailman-Approved-At: Wed, 13 May 2026 11:15:56 +0000
CC: Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/10] nvme-pci: implement dma_token backed requests
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7HQQGVZAA4DGACHUFN6XN2G6RPF3ZMSZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 3936B532072
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[331];
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
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	NEURAL_SPAM(0.00)[0.781];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On 4/29/26 16:25, Pavel Begunkov wrote:
> Enable BIO_DMABUF_MAP backed requests. It creates a prp list for the
> dmabuf when it's mapped, which is then used to initialise requests.

I left nvme request / map setup as it was in Keith's work for the most
part (apart from rebases, adapting it, etc.). It appears I have some
use for prp lists, and I know Kanchan, Nitesh and Anuj already have some
patches adding sgl support and some other optimisations. Hopefully, I
addressed most all feedback from v2.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
