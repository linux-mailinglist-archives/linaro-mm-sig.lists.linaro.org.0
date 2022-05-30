Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C53F653A457
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 13:51:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0468B3F0C9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 11:51:14 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by lists.linaro.org (Postfix) with ESMTPS id 424D63EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 15:45:17 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id c65so10313313pfb.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 08:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=UzXLXm8vq0opPbH6M8k2y8y+ok1gbqPBfw980V3Tkyk=;
        b=OC//hEgQZz5hudScLXcI+3NIXxxiRgV/eBvm2OMmnz0Z8udrwsrpuPPA72m7d0+4ad
         YH8xRKqUWhJqk6c2VBbCRt1rsr3umJ9xr10B6r+YoN88npTj2HUNhET6FKAGQ9FpP5sa
         grwNjNYIahG7tnWRMWx/Fv5XTCPwE9/Gvf/AU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=UzXLXm8vq0opPbH6M8k2y8y+ok1gbqPBfw980V3Tkyk=;
        b=Jn5rjpoqpafLyjKRjV1cbsitJ9jTdV/H75d8KNAi+x1yJNq07UfcPCZ8+pJws2TTOU
         rCtXS2O0oXoK31HdRVAwbbzhS6XkojSoV2sEaaBD1uQqlJ3aLG39U63IZjovhl3a4eoS
         uaIEPVb4MTa8HSbhdheBwCw8BNs7dYvrGSYLprs2o4cwk2lXveUhIFfiXHYraEIKO5bB
         h/Wi7qkcBYAcxK7ZEhKrFTDi8eDMrWux9YVVFe4RC2evaGxy5vuBvSJiSjsG3juoESm4
         M5G1sNogibRFCRJQqLgeD3+wHrh0GvUXt2FNdwvEXjDiSmPw0oBRRYB7AMZb29N2ixco
         9rPQ==
X-Gm-Message-State: AOAM5319jdEnPSdwAb18JAwcWekNnePDBRkNkC/w/qztQw0QJ66hz1p/
	dwA9J43r+kLxYffwSxReQnsrqg==
X-Google-Smtp-Source: ABdhPJyzRn6dpzJxAThZJd/mUWBZTsKavBYdkXkPO7g2uyd2aZ+PyHCjdemggRcBDIURpiq1V2iudg==
X-Received: by 2002:a63:1163:0:b0:3fa:5e1c:f86f with SMTP id 35-20020a631163000000b003fa5e1cf86fmr32724131pgr.543.1653925516458;
        Mon, 30 May 2022 08:45:16 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:7d2a:ad1f:afa1:7770])
        by smtp.gmail.com with ESMTPSA id 65-20020a620644000000b0050dc7628166sm8935262pfg.64.2022.05.30.08.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 08:45:15 -0700 (PDT)
Date: Tue, 31 May 2022 00:45:10 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YpTmhixkV7+yh6wo@google.com>
References: <20220530142232.2871634-1-senozhatsky@chromium.org>
 <7eee4274-bd69-df8d-9067-771366217804@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7eee4274-bd69-df8d-9067-771366217804@amd.com>
X-MailFrom: senozhatsky@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DSYJEYPBRV5PCS37AFOG4I5DOOPXKLJQ
X-Message-ID-Hash: DSYJEYPBRV5PCS37AFOG4I5DOOPXKLJQ
X-Mailman-Approved-At: Wed, 01 Jun 2022 11:51:08 +0000
CC: Sergey Senozhatsky <senozhatsky@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Tomasz Figa <tfiga@chromium.org>, Ricardo Ribalda <ribalda@chromium.org>, Christoph Hellwig <hch@infradead.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: allow dma fence to have their own lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DSYJEYPBRV5PCS37AFOG4I5DOOPXKLJQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On (22/05/30 16:55), Christian K=F6nig wrote:
>=20
> If you just want to create a single dma_fence which is also only bound to=
 a
> single context you can embed the lock into the fence without much problem.
>=20
> See how the dma_fence_array does that for example: https://elixir.bootlin=
.com/linux/latest/source/include/linux/dma-fence-array.h#L37

Christian, I'm not sure I'm following you on the "embed the lock into the
fence without much problem" part. If I understand it correctly this should
be something like:

	fences =3D kmalloc_array(1, sizeof(*fences), GFP_KERNEL);
	for_each_fence(...) {

		// what spinlock should I use here?

		dma_fence_init(&fences[i], .. &lock ..);
		dma_fence_get(&fences[i]);
	}
	fence_array =3D dma_fence_array_create(1, fences, ....);
	sync_file_create(&fence_array->base);
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
