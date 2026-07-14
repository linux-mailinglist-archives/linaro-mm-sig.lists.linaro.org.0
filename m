Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TC3oOE5yVmrl5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD7A757746
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:30:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=J9zPIYUx;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3602401F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:30:53 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 979C640156
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 09:22:07 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-47f365afc5aso1232964f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 02:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784020926; x=1784625726; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ersi/mYvINkBI2FWvIZV+GjZx0POxK8U4eXz4ZcSu2s=;
        b=J9zPIYUxObTNq7I/2ZnGSIMuNmi0owl/0PSOXkHyI9hgPzPYpJx0oian3v4zVHH4+N
         NOMjRp3TUoXyG5H/qkuC6HAMST4HAUGfzA5Q+F32+AZASowoDHTl2HsWcDvdOmrQpqOH
         dysdrVgKpq7VsWrMtSigy4oIGDAEkPWWLBMXfBwdwn92GdzbfsoRF86Gy9f5lgnl4ttC
         WsjqoOREW7P17uBt/GWtNuXKOI/MFF5mtsSiMkR5WOT2a2Uc/HIpTMb6N7OkkcCOO8Pd
         JRs5fxFZ5KZAiUtCReLZLWCk2gIBPP3KMCDPXdvgnxOzrnKFDGxPm63McC6AKK1vnGh8
         Wgzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784020926; x=1784625726;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ersi/mYvINkBI2FWvIZV+GjZx0POxK8U4eXz4ZcSu2s=;
        b=CHg8dbWFWAcTPDIxvVKDK7ZMqFChTwwB1U6ztd0maH+1VwwLH6LlOjMrgP8B9dhcTq
         +qr3X79I/8H0ZYDWwgxGbbLOGr+/6I7A4+wVVaEKlpt+JIuanAgEU1UIWhsjsBNmFq65
         jb/eaMtyayKlRb1vyoP1QziRVQZAHylSmFhAg2qWYZAwgyiofkAHLQFM8QTcMWgpVTZ6
         wouYfTRR3yasDlWH6l4qzGm1OcH2YAm98H0D5qFFfBemDJU/NkV7NglNqmhukNH4GDb6
         BzCr87Z1rM9mpIMnjUnSqyCz/fVevYqWCvu+2NZYQT8I1b8mdTUKYOmcrykQiZBC6GiI
         45Fw==
X-Forwarded-Encrypted: i=1; AHgh+RqaTr7L691MhZcv93nFZ+t02Iv2CTLObBm5uWAqZDifIrpr6RWM8owtMttFs0qvb/H2j34vAh4/ZjkDhYl/@lists.linaro.org
X-Gm-Message-State: AOJu0YxBIoqLiHFA3HaYsbLlwynRl8D99gtK1RqJw/pCE7Us7Petevpd
	VqieGOR5G4qpZlfUuUlCw/jaDfRwGHrtsm1qo2r8mjPDUdVtCuhKsq8V
X-Gm-Gg: AfdE7clBazn4zERnu8eEIxVhavfT8Vb6QG866W3NhSYrpYBDbV5VXVjCxlvLVnBpEP4
	CBqynI7jzS7q5wM/ERRUcc4tFmxB7HTI9TUTVhZj2EV610l/X4+6I6SmuTwgHwD1mXaG375Zw+1
	75CcO7OGQXpnPK2QM1zjjJqF8hLLEEYMK3JdFpGb7RvmhRo1gxr27EyYb67VzYBIo0I5oyoW6NY
	i/v9+jZBMaIzqm6idkbjQTuLk/A0PB43Zbjsz9NVpiweAwKLvtmTIfD9xydBMLai/ZhfU7SEGEm
	qdhOcTqNxtC69yTUS5TfbYIXjYzr1PTD4iATnV0z6krV2C0in7Kc3Fl7utE0ojOLMF2dBmfQh7M
	qWsnO9inPklGcm1Dm3qlCX0ybjGGL8AWAostQwSJTy+R+c5sLPdJ7UPT+qFDjc6MTOfN/j5SbWg
	u3pCrgMmIVsLrQJeuYduKjwPXT0dnHwhq2ioMkLpcayx8Ugi/vQRAbYgnmZMMH9S4PtareH5dwU
	aVCNCT+fcJJNk53cw2sDy52s4Uiy1WtCWKRYlE3mfl3xg==
X-Received: by 2002:adf:e186:0:b0:475:6c34:2120 with SMTP id ffacd0b85a97d-47f4887dd78mr2004457f8f.18.1784020926324;
        Tue, 14 Jul 2026 02:22:06 -0700 (PDT)
Received: from [192.168.0.207] (nat-wifi0.uniroma3.it. [193.204.167.180])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f476e9d02sm6291743f8f.19.2026.07.14.02.22.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2026 02:22:03 -0700 (PDT)
Message-ID: <619bb771-1038-4ec1-8d4c-17dc69df33d6@gmail.com>
Date: Tue, 14 Jul 2026 10:22:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <20260713071828.GB30168@lst.de>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260713071828.GB30168@lst.de>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HOEXY6IYEUJ3AETHYVUCNFJPQVBFD5P5
X-Message-ID-Hash: HOEXY6IYEUJ3AETHYVUCNFJPQVBFD5P5
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:05 +0000
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 00/10] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HOEXY6IYEUJ3AETHYVUCNFJPQVBFD5P5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:hch@lst.de,m:axboe@kernel.dk,m:kbusch@kernel.org,m:sagi@grimberg.me,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:akpm@linux-foundation.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-block@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-nvme@lists.infradead.org,m:linux-fsdevel@vger.kernel.org,m:io-uring@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:nj.shetty@samsung.com,m:joshi.k@samsung.com,m:anuj20.g@samsung.com,m:tushar.gohad@intel.com,m:william.power@intel.com,m:phil.cayton@intel.com,m:jgg@nvidia.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADD7A757746

Hi Christoph,

On 7/13/26 08:18, Christoph Hellwig wrote:
> Hi Pavel,
> 
> do you plan to resend this series?  A lot of people are eagerly waiting
> for it to land.

Absolutely, I'm going to finish v4 next or hopefully this week.

-- 
Pavel Begunkov

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
