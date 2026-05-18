Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGcMIWobC2o2DgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:00:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F83D56E363
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:00:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 619CB4095D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:00:09 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 001AB404C7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 13:59:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jZjQZAiP;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.208.53 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6763cc8775cso7225481a12.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 06:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779112797; x=1779717597; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+WT00WHtAu4WqCgP+skKdKZ8K4Rq+JbbmW7SvyUtdIs=;
        b=jZjQZAiPPnqmOC+GQSx/rUM9HoPS3WjYTUPFmK8nFYu8qhSCrUIC0rDop6KWYIgnps
         M+r+L7s7WSlBsZX3b5kX0cO9kmR8jyuK63s2pDXPdcVkOPmZqpEEaBH0IP9AbTEgAdTf
         RtDafJ75onVyXFPyxfZ69cvc0wjSPevlmb70fHcNfc21ABO4hZ3y56sZDPBeD1Mtv8VM
         Sdde7U0H+gmqVd1ySYjJGPPxuO9EHjacz08nNwFl3mU5bu5SZnsKj7a8WbS9pIyM7LTI
         bvbllYvX9JfOe6cgDUcvgTWNEeFLSijGFlqn7FNoXRJtUhAqybypSqlqIbXi++JU1E5N
         6IIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779112797; x=1779717597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+WT00WHtAu4WqCgP+skKdKZ8K4Rq+JbbmW7SvyUtdIs=;
        b=pvkLfAEQ/IrYGrP87MbDmXeBbQlsYR20AZP5lB8gf7zh0gfpi2B102Mb0+8VNlkBrI
         nkjFu4T4AKJuOCeKQ7RZI10JH+fijznRG8I/IX8FY0Pmyfp91EflQNkHmtpQSSIJ6DL6
         8nj9/UyyujSiPWj1u8pxmmDZJAEIfJreH8+CT8BJ+sb1arI8RNsRlwUmOQIVSnaL62tR
         tqX+qhc/axgnNSqOGcFuulj9i8YA7Z5XwXnwZ/8Ro2vR/PIVEGPeAC7/934medWLYvZS
         BP/ygMKhjWt9xYA4oC+CjRO8DXu+G+pp+pDWOMwEyCwBkTWdjnpbJoMrIRxzTFo3NOIS
         AxDA==
X-Forwarded-Encrypted: i=1; AFNElJ/x8nalm7Y6QBjULcwBpNOzmG26btkhvJtiF31sNB7GRJ424vNBnk+k3V73dOPMzTLCifOP90V6Cp4AhC2/@lists.linaro.org
X-Gm-Message-State: AOJu0YwrI2a4zxyDrNf0DowK/lKh4gxs0dQtLSuIPH1M1O8fMKKLNGEA
	9W5jb/eM3FNaxfiWIoJY9SbtdcW2Zp9ivZBRsDlUnkDxMp2MDb4pz7Zj
X-Gm-Gg: Acq92OEFtK/4oyfCvATxMRvIi1LUdDtnvBJlbRw996EsNmMZ1zHLJb/rEXknixG9kXa
	TCr+xV9oCo6MXaDevzBpe0YmChA1luFUsSmev36feCTMFChJ5jo5QLK4yKjk7Lf4GNDhkggAHkq
	a+mtAvr7iPLGVFHqBBi66puyoSzchQ/Nnr3XklpY5oKDWKf/YAmOl0YYKuSM8u2CG8V9Z45Iq3D
	hqnxqYkkmqnvs6+VGK3S7BQxQLmOnZu6XbC9g6bAaeeokQgREYuYBZlbSWuvAD6xYWpwzlXNZrA
	aazAHbKHNq3/k/IyxHYs99+KZs70wU5iFLXaNu6LdboJ9HE1oLpcX2c8Sur3gEnArXQsx64VE0R
	+ePI9+d/Z43SqeaPYSHYog8a6GcCn/K28JFqsCX8P4I3iMnSa/xhV9Lz+FKNkQVRNhSpNESxkML
	QA1yTvw51MrY9+rMCpaK++9lzR9i+bJ9uPTBvX1L5c1AZBSBOmdAs0RyGMNj3GM3l9cyX+niWUE
	GHZTmrkY8QnPOzvgqDKhM9fJV/pZLjYpx7LDGozwPd9quQtpBVFeT4Cf8FMk1yTJSIuLSWt9JJK
	/5Q64ESC6eV/
X-Received: by 2002:a17:907:3f1d:b0:bc1:7da0:21 with SMTP id a640c23a62f3a-bd4f34bd0e3mr858876966b.23.1779112796524;
        Mon, 18 May 2026 06:59:56 -0700 (PDT)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bd4f4dea94bsm565057266b.33.2026.05.18.06.59.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 06:59:55 -0700 (PDT)
Message-ID: <166da921-77bd-422e-85af-ef67d6fccc42@gmail.com>
Date: Mon, 18 May 2026 14:59:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
 <20260513081929.GD5477@lst.de>
 <24833f76-2289-4859-86d1-9215b11a1258@gmail.com>
 <df697a76-c700-4908-ac08-a47ad07e0796@amd.com>
 <4561c621-817c-46be-8ff0-0b557f6c819d@gmail.com>
 <20260518125713.GC5754@lst.de>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260518125713.GC5754@lst.de>
X-Spamd-Bar: --
Message-ID-Hash: 2AG76EJV7KCX2KGNSQJJBKRPK4YZWIWG
X-Message-ID-Hash: 2AG76EJV7KCX2KGNSQJJBKRPK4YZWIWG
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2AG76EJV7KCX2KGNSQJJBKRPK4YZWIWG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: 4F83D56E363
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/18/26 13:57, Christoph Hellwig wrote:
> On Mon, May 18, 2026 at 01:40:18PM +0100, Pavel Begunkov wrote:
>>> When that is really a performance critical path then you can use the likely() and unlikely() macros to give the compiler the hint which one to prefer.
>>
>> That might be more penalising than placing them in the right order,
>> and it might be fine as it's new and all that, but it's not a clear
>> cut as it's definitely not created to be a slow path.
> 
> Yes.  Whatever the caller is using at a given time is the fast path here,
> and dynamic branch prediction in modern cpus handles this really well.
> 
>> TBH, not sure
>> why we're bike shedding such things, is it somewhere in the code
>> style?
> 
> It makes reading the code annoying, so it better have a good reason.
> Now for a single conditional it's not much of an issue, but these
> things tend to pile up and then start to get really annoying.
> Always write your code the most straight forward way unless you
> have a good reason not to.

For me, having the most common case first is more natural and
readable, but I'm going to flip it just to avoid spending more
time here.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
