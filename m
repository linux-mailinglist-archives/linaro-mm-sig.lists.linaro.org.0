Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FFD62817D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Nov 2022 14:39:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 630C83F0CE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Nov 2022 13:39:13 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by lists.linaro.org (Postfix) with ESMTPS id E64F43E9D3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Nov 2022 05:29:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=M6oFjAb9;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.167.49 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id be13so17589258lfb.4
        for <linaro-mm-sig@lists.linaro.org>; Sun, 13 Nov 2022 21:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ShWkmDDgnIz8JEqHGHDUzJovR/KTvgrYk+MdmxwWEAI=;
        b=M6oFjAb9H7upWMZ1gY9NJ/kc+g+erCu4WoGXXCT5lXPWnl/RXxHPBTyV1KLUAIHk/A
         Rh1Uu5LoghwGvCVeRw6EUkrnlIddm8KAzSiHZmjCvXNysfvrnd0qW6TX1wnYEj0+Ntg1
         dMdGYWp12oCxRSDO9/tGsx7Ss9JIR5Ot2vM5zHDsYGR5kuiTHiJGcThUFil0RkgluNJe
         T6KHP0I9HC28qUedf9RlDsPxpzClAF20mdHbH+PTwn8hzN+CgKep+SNR+WgTHUhlvM2t
         AB/NU2n/Gd7pApevS+qZtZM+UtC6drf1StNYHKztiToLi01hC8obboH3EOyekflc0NxH
         FHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ShWkmDDgnIz8JEqHGHDUzJovR/KTvgrYk+MdmxwWEAI=;
        b=pViMWFCJlPsJFmU9LTFgkMxsyFND9FMNJx7UiH2U9h+1UiyXNtx6QjmoElI14QC4nj
         bSY9VHtjgiLTzKi2aMkzAQD3Xkgh5myxPF2RwFu6sOE02uue78aAgaQSXxQkh06PydpU
         e4H8PizxC8JVw5fycxi5DLrAbWJKeO9A9/vfrnAGSfWIBEkTXQ5gXskfy+wNd69kkUmh
         /wxDe6r56jMuvAlFboSNLgxGrUw5zETupdTc20k9pkeoIbXxGHTurwynPjeM4ZjiIjzn
         321hIdpS2Hwpl5Y4+9EnymvYToJrxfJV4+hkfygSx5ZS0W/vjmcs6hY1YHUPvRFdW4Oj
         1zWQ==
X-Gm-Message-State: ANoB5pnP/Mo2gJRgsY1QHAprFrwSeUcUzedGEi9TahMf/rn7EwQHYKht
	wZkiIyKpAA0+oLHro3AxPyA=
X-Google-Smtp-Source: AA0mqf5TWJtZdRvaHwV/5KDeT3EQPkceXrM7vRnjgc+TPA5daxKBhc5Fe7Yu+19sY5q2HEPVall2CA==
X-Received: by 2002:a05:6512:3b0c:b0:4a0:13b:6618 with SMTP id f12-20020a0565123b0c00b004a0013b6618mr3442388lfv.15.1668403787592;
        Sun, 13 Nov 2022 21:29:47 -0800 (PST)
Received: from thinkpad-p72 ([78.133.163.249])
        by smtp.gmail.com with ESMTPSA id p7-20020a2eb107000000b0026de0c8098csm1853693ljl.26.2022.11.13.21.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 21:29:47 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
Date: Mon, 14 Nov 2022 06:29:44 +0100
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Message-ID: <20221114052944.GA7264@thinkpad-p72>
References: <20221113150511.8878-1-lukasz.wiecaszek@gmail.com>
 <50cece73-a499-eba3-7018-9e92e0791c88@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50cece73-a499-eba3-7018-9e92e0791c88@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: E64F43E9D3
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[googlemail.com,redhat.com,intel.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.49:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[78.133.163.249:received];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.167.49:from]
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TEKYAWQOB3EEOMCIGJEN2RXJNQ5VIWGI
X-Message-ID-Hash: TEKYAWQOB3EEOMCIGJEN2RXJNQ5VIWGI
X-Mailman-Approved-At: Mon, 14 Nov 2022 13:38:45 +0000
CC: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>, Gerd Hoffmann <kraxel@redhat.com>, kernel test robot <lkp@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] udmabuf: add vmap method to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TEKYAWQOB3EEOMCIGJEN2RXJNQ5VIWGI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Nov 13, 2022 at 07:35:20PM +0300, Dmitry Osipenko wrote:
> On 11/13/22 18:05, Lukasz Wiecaszek wrote:
> > +static int vmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
> > +{
> > +	struct udmabuf *ubuf = buf->priv;
> > +
> > +	if (!ubuf->vaddr) {
> > +		ubuf->vaddr = vm_map_ram(ubuf->pages, ubuf->pagecount, -1);
> > +		if (!ubuf->vaddr)
> > +			return -EINVAL;
> > +	}
> 
> Create a new mapping on each vmap_udmabuf() and add the corresponding
> vunmap.
> 
> Otherwise persistent vmapping shall be released together with udmabuf.
> It doesn't look that persistent vmapping is needed for udmabufs.
> 
> -- 
> Best regards,
> Dmitry

Right. Thanks for review and remarks. Adding vunmap sounds reasonable to
me. Will add it somehow this week.

Regards,
Lukasz

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
