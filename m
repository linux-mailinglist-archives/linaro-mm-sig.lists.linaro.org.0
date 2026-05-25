Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOIiFlb6E2oxIQcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 09:29:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E398D5C7255
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 09:29:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E41F4049E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 07:29:24 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id C7FA63F78E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2026 07:29:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=mP6xCmdt;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4891e86fabeso117423295e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 25 May 2026 00:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779694152; x=1780298952; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m+/CremarURMLXbq9HZsozt2//0CtuRcgdYp3OMzrIs=;
        b=mP6xCmdtgYNmbTJ7VkY3vG3IvvgQ8f+MfgUPM6BO/eXF6RY7F295IaWTcUP/l6VMcf
         YrLcAcIWnJEKbADgfC+KBfxm0RjP3CD2v880BA6qQJfta3gfYXNyZDwy1RL9/7K7oEVD
         BkQ22F9h8IFIQoaV53YCqzrXcbig+HOmALdotoJND6zLaqguZQ/WMsIsZyIekG7SjWS7
         I90o1DRxw0TzuF6Ke8LS9aCld7WV5kxaqzA5SBBDHy6NE038xjeGT8TaTAfV5CKXjOqO
         essHjxbLu45gp7iM49LCBEnfDfC4c3WNNz0+CfgV4o/5How3XQpv2wP+Vd4nJluq8ETV
         6rMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779694152; x=1780298952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m+/CremarURMLXbq9HZsozt2//0CtuRcgdYp3OMzrIs=;
        b=aAraHJHJSoJrMq44CY+vjX3389+zMFuiCsSWWCOpiE8Jsbik88X9lt9ybgWqVwvXKo
         66LJEmnER3nLv8Z9m+OtaXhsoiharHFlVIrZWz4LXfKXPlTJ0BQZA7Gd5IourTPf/7Ry
         wlRPzEOgUksu32jorQi8FPDU+X3oemZncuSB6+Jjn2iuu2nAF6Y0cusAjJPD+ur/CGJu
         txT29E4PQZVcP08UZRfVbMjQ+GFelpndYaQwHTYlx2il/Me3djv21IqnWNJTXpCzT3zP
         kyeQhrzLUQL5PfzyPWDiy7zNmOis2AjojxstbMSNhkh18l/PW7+muY0CmOi6VfodHQH0
         N8OA==
X-Forwarded-Encrypted: i=1; AFNElJ+PW/7hBP4bFzn8k83k24rkb3xgdFauDL/NN3WwKLqnIdceYAdoUAGOKV8zjDOILbIRhXV822txxoJEFhT8@lists.linaro.org
X-Gm-Message-State: AOJu0Yx7wudCmrCVuPqzvjN/uJ/2fj7Mc1cVADUl5iDkSmoWxTtDfiEE
	6y/xKoPjdmEWcQR2MITZmg44j4MZUffNEk99YDDkSHenHLpOkhncBrF2
X-Gm-Gg: Acq92OHTHLwhL/rNQRiqUi+AaxpW6ts7YlE8SwB61U7SB02EEzjd7MT5pXaYNlNnH7t
	Rr0nf08xroZrX08UBDTOCMRveZKruvNLhN25LLXfjxriWxYJal9myX9C6rCBSGg0x0ZhcOnv3Dp
	+y9VXEfckISMml5753luAfiRuclByQN2OZ1X293TQMUbpiMUEsbDMjBRfYMVw/y2ANslWvc5f3v
	ag/CqlHPWlmulU38t9Dn7snhOOKatSVeDzUJtbGQg6/561mj8qigGHyd2hiDJsTy9SOP73t8f9S
	RsRvyH3dUtnORUcd6wCmt4pKG64REkGQaT3g+cWFhbjqaPz7Is8q9DpyA29+Exduzz4bOP6mwuT
	gPJhDnAPB4EcuE21r+ADcWGa/i4TqSBlS2tFEEB5vT8144evMTJJh2IFjZFFataiMGiPL44ZDJs
	dU9r04eotJpE+6gxFkm/kvyqpL/pE7QDuWL5dNeoSW6MxvFDExLBYk8cKT1YF+1vO1e+op7IN5E
	Vrj0EiP3xOyEFlrV+Yz61cNBmYZFO1oTAIOOqKaJkcYBx8QQ39m4QBnfKDO2CD6GbqbCYfqvq0b
	LDzr118WZcKRlIab2/cAQmw=
X-Received: by 2002:a05:600c:c4a1:b0:490:1640:8269 with SMTP id 5b1f17b1804b1-490426d1a16mr227253215e9.18.1779694151663;
        Mon, 25 May 2026 00:29:11 -0700 (PDT)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490428d4cefsm81771025e9.14.2026.05.25.00.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2026 00:29:10 -0700 (PDT)
Message-ID: <57ae2e2f-8523-4cba-ad77-920535edd236@gmail.com>
Date: Mon, 25 May 2026 08:29:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
 <20260513081929.GD5477@lst.de>
 <24833f76-2289-4859-86d1-9215b11a1258@gmail.com>
 <20260520083043.GA18893@lst.de>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260520083043.GA18893@lst.de>
X-Spamd-Bar: ---
Message-ID-Hash: HDMST2DYFPOZ5XGLHWHEDQPMKFQAU4N2
X-Message-ID-Hash: HDMST2DYFPOZ5XGLHWHEDQPMKFQAU4N2
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HDMST2DYFPOZ5XGLHWHEDQPMKFQAU4N2/>
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
	NEURAL_HAM(-0.00)[-0.980];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: E398D5C7255
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/20/26 09:30, Christoph Hellwig wrote:
> On Mon, May 18, 2026 at 11:29:54AM +0100, Pavel Begunkov wrote:
>>>>    	BIO_ZONE_WRITE_PLUGGING, /* bio handled through zone write plugging */
>>>>    	BIO_EMULATES_ZONE_APPEND, /* bio emulates a zone append operation */
>>>> +	BIO_DMABUF_MAP, /* Using premmaped dma buffers */
>>>
>>> Shouldn't this be a REQ_ flag as we should never mix and match bios with
>>> and without this flag in a single request?
>>
>> Do you mean adding both and propagating it from bio to req? submit_bio()
>> takes a bio, so we still need to set it there before it reaches blk-mq.
>> And there might be bio-based drivers using it in the future.
> 
> I think I forgot to reply to this, so let's do this now.
> 
> REQ_ is actually used by both bios and requests, so if you set it in
> bio->bi_opf it will automatically get propagated to the request, but
> it can also always be tested on the bio, including by bio-based
> drivers.

Ah yes, good point, thanks

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
