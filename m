Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F35940C68
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jul 2024 10:56:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F6D74413C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jul 2024 08:56:57 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 39B9E3F4BA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jul 2024 08:56:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=eGWlf1ar;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.221.49) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3684c05f7afso480972f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jul 2024 01:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1722329794; x=1722934594; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WgtHQjzcSzhXJxDV9mdj343ETcHxolzhEYRr9t1Zx5Q=;
        b=eGWlf1arMlcERoegcirTBGgSG7v88mY9WIkZzYu9NFh/s3AevDUH8cGHzuAfox3S78
         4vhNUC6Dfb1t3W1uqVQ09LkE+RK8uQWvqP6ciA5LTxP9MrrWGyvSXFOnFJOu/gJSo8wm
         6690KQL5pb0bwU+A4kZ50Q1SDX6ftCBvGzzWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722329794; x=1722934594;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WgtHQjzcSzhXJxDV9mdj343ETcHxolzhEYRr9t1Zx5Q=;
        b=EKEucF0dDpUG9nC1EVcHK62NH8cZ1qf1lnR7dIXEky9KI3Am5l3nORImKK4G5pgJ0s
         sD88G2USZCtZobq8Jk6f/2xEmuhg6eniG4kZ4XNVKFIZAISBqqtCVA6M5IjjljNuQ6eF
         nA1XcyQX3274CMZb2gJmGFwK89vYrLO14DwqbNnbI8WZsBDoI0DwGziJpcRa76rS4am7
         4tYn9z1yvkZArlgLPwGipNLSPFrdtxDbBQcGxJ/nHTGdOmRH4kr8TbkAESbPnCfIs6QT
         MjLtTADuLutV7nf+IlmPnM6PocaKXuYvT4oaoFTceWJeAzq1KIQo1C+HXrVOA3+7KqQO
         CKdg==
X-Forwarded-Encrypted: i=1; AJvYcCVVlEetmtymJZ0JBA5sCtrrhEhwhqBMitVakqbkIOz2xr+aUP+DqdoM9ISxO/I0vr/GpOtcV+AU1yVpAVe6@lists.linaro.org
X-Gm-Message-State: AOJu0Yw+QDNM+ko18pk8q5LZkgr2QGKP6ucbOM9BtDG0LTp4SGhA5fjH
	XU2NIwjvdL/lMsqxroXZeB6FFMZHVS/UC6oVQkrBxa7v8sW+m9abE7hjorQ2mG0=
X-Google-Smtp-Source: AGHT+IHIY4OWsp+8at+vnJLgPPIkNjmZcLBJITV+uKHf3I0BGxZGznhKnrOaDTRFuZSQOzI7tUwvqA==
X-Received: by 2002:a5d:5f53:0:b0:368:aa2:2b4e with SMTP id ffacd0b85a97d-36b34d23accmr6470380f8f.4.1722329794226;
        Tue, 30 Jul 2024 01:56:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b367c028bsm14070438f8f.24.2024.07.30.01.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 01:56:33 -0700 (PDT)
Date: Tue, 30 Jul 2024 10:56:31 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Huan Yang <link@vivo.com>
Message-ID: <Zqiqv7fomIp1IPS_@phenom.ffwll.local>
Mail-Followup-To: Huan Yang <link@vivo.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	opensource.kernel@vivo.com
References: <20240730075755.10941-1-link@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240730075755.10941-1-link@vivo.com>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 39B9E3F4BA
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.28 / 15.00];
	BAYES_HAM(-2.98)[99.92%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.49:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[ffwll.ch:dkim,ffwll.ch:url];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
Message-ID-Hash: ILVIQ3QE6YDQHJLCDKPDQZR4PE64FQS3
X-Message-ID-Hash: ILVIQ3QE6YDQHJLCDKPDQZR4PE64FQS3
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/5] Introduce DMA_HEAP_ALLOC_AND_READ_FILE heap flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ILVIQ3QE6YDQHJLCDKPDQZR4PE64FQS3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 30, 2024 at 03:57:44PM +0800, Huan Yang wrote:
> UDMA-BUF step:
>   1. memfd_create
>   2. open file(buffer/direct)
>   3. udmabuf create
>   4. mmap memfd
>   5. read file into memfd vaddr

Yeah this is really slow and the worst way to do it. You absolutely want
to start _all_ the io before you start creating the dma-buf, ideally with
everything running in parallel. But just starting the direct I/O with
async and then creating the umdabuf should be a lot faster and avoid
needlessly serialization operations.

The other issue is that the mmap has some overhead, but might not be too
bad.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
