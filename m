Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2E653A49D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 14:13:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 080FD3E818
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 12:13:44 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id 3F5F23EE5B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 May 2022 02:51:49 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id m14-20020a17090a414e00b001df77d29587so1099644pjg.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 19:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=xcpbx9Lt9Owdlm64rePa6qexHLWiyypbRMgxN1JLv/M=;
        b=CyYXFkxhZiXQiu14RxVExNHuXRW0mFlO3k3+vtcoaKX56jC5Ba1StMa8qKRpw1gBRQ
         m2pdXOpOXP5yoNapy24x4BR7MDFAg/xRghRxTbuu49cw3iyj+gWoa8iNtf8UAns32Wob
         fQmMqbHWuHhV5B4vVeGxYjmDjsojaHhPcIBeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=xcpbx9Lt9Owdlm64rePa6qexHLWiyypbRMgxN1JLv/M=;
        b=sdYGP5F5E3Ce/iCngH1oUqCuWyirvXCvFSBkVTqRyInfPk+YI4K7AK5W72QgSBS250
         YFevwWGW4qBnJd8Uysnp9JISNoGqeq6kbOOsBBLj0o8i0Llcl18XNk7/w0loRif0363D
         aGTNSYg3Rv7kimC+qRVVYIuYXjq/0iVXlUlWxDCnnJflNS0hoKtr6cZZUUHuC749hsTY
         E0AF3p326x7p20nRgEjd9IY5KSC6+G+yDwc9atjxNkXKdoDJGU3zJZT6G1BQCtzexwjY
         Moq7nCj4+JjDJiScCa2cDQKgpODL5ud31xWpwBnyD+zf/fpbjaYLwkgpas5y4hSVw72K
         EgXw==
X-Gm-Message-State: AOAM532cb7VxDNL41XgIaDhEV5yH3I4e3dzSOMrzHxbss8J8cCFGm7Vf
	qqqZnKXx5Cfnbipwss/AF0D2KOZHzyRvWQ==
X-Google-Smtp-Source: ABdhPJylou6Lhk/REVZIpM88w/Cw5uS6g71yGFXefOXkdi3IddUox11VUsoNOmO40/Smst1WUN/3KA==
X-Received: by 2002:a17:90a:de01:b0:1df:cda5:8332 with SMTP id m1-20020a17090ade0100b001dfcda58332mr26157122pjv.123.1653965508382;
        Mon, 30 May 2022 19:51:48 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:7d2a:ad1f:afa1:7770])
        by smtp.gmail.com with ESMTPSA id i16-20020a056a00005000b00518382bceaesm9479310pfk.57.2022.05.30.19.51.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 19:51:47 -0700 (PDT)
Date: Tue, 31 May 2022 11:51:42 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YpWCvniLzJfcp684@google.com>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7eee4274-bd69-df8d-9067-771366217804@amd.com>
X-MailFrom: senozhatsky@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OUX3WZPZJ7NMF4ZL7ESFNVWJM3G2JV4K
X-Message-ID-Hash: OUX3WZPZJ7NMF4ZL7ESFNVWJM3G2JV4K
X-Mailman-Approved-At: Wed, 01 Jun 2022 12:13:39 +0000
CC: Sergey Senozhatsky <senozhatsky@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OUX3WZPZJ7NMF4ZL7ESFNVWJM3G2JV4K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On (22/05/30 16:55), Christian K=F6nig wrote:
> Am 30.05.22 um 16:22 schrieb Sergey Senozhatsky:
> > [SNIP]
> > So the `lock` should have at least same lifespan as the DMA fence
> > that borrows it, which is impossible to guarantee in our case.
>=20
> Nope, that's not correct. The lock should have at least same lifespan as =
the
> context of the DMA fence.

How does one know when it's safe to release the context? DMA fence
objects are still transparently refcount-ed and "live their own lives",
how does one synchronize lifespans?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
