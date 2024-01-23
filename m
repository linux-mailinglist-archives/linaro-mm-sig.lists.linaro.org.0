Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 427CC838B9C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 11:22:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B39D400EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 10:22:02 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 4398A3F37C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jan 2024 10:21:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=YyFQTjwY;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.128.50 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40e9101b5f9so46373705e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jan 2024 02:21:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706005314; x=1706610114; darn=lists.linaro.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3bDSA+gom3TfDGXLMwfnL3bJvIiO/S9Tm1WQBwfCGz8=;
        b=YyFQTjwYpMB29f0ubqoSpR513LxzsMEmPAjKXkV0qaZ5ZfjqxSsIJbfS0fUbtlWfVg
         fHuy30rXY+OfCjhcz2chGDCe+3+1Igawfn1k6TD0LAwbwHx5gSvN+vqIG3Fz9/91Yawl
         bhjp8JmFRfVA71adL9Z+Zq6dPBLMLycP3WM3daiqObxejYoc2Ix+4cRbP8lI0Eyl/fEG
         zohV6aoGpMLtFJLHwxV0XHGTH/N8cGD8ByNc/GLgKnaMkhNgD3tHGCagvJO2zaVDPVQa
         jfY5EVtJhOEY6YM1vdcyZOYXsChxrDdOy4imIChCVw2wFeh0KEGvt1KWQM4wIpJmf5Mb
         EpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706005314; x=1706610114;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3bDSA+gom3TfDGXLMwfnL3bJvIiO/S9Tm1WQBwfCGz8=;
        b=TmJdNgbZxi8QlIbdHMGtaFgp+KsIdp8tDRBY8/MclmSCcfzMR5FJh0mrM/C0zN2WP9
         fIlVUPf6iKv1cSaDDZqWI8N5vVAaiT7AQcIqMNP57/+Kvzx50nX89f6x/94bJ4dwJPrx
         eEC5R6KDsHZv9wOtjIklwdWH/dyYNf8fHbZ3xDIA4Oj+wPeAY0H2w01zh1b1HHq1vzEw
         aAcR9D3c4mQPUbOXQcgF1vJOzzpaOd5KjRiYJtzIvr+1c1PclD+oK9kPrIGp6vcV35nu
         nBy0gzhtotpl/PIq9I5QPXn25K8eBZZSqi4JQKK2Gx6rOpRqS3YPSMVuOIAdET/ZyFb2
         UbVg==
X-Gm-Message-State: AOJu0YyGLzYnUVyICF2CavEezKLsRMcErpeuCNe6PzckiMf0rlQp+BdM
	HuIakPnDSIgcfvYUw6mxZGf02Dn5q57JXS7FbvgxfRkXfpEp1LCkwwwKgM7m9vM1Zg==
X-Google-Smtp-Source: AGHT+IFflZU0sW34uw5CNR200M1CKhRQ13yQZ773aFzh/ZbKD1pPVy/BbM9NJkJdysmTiGxtjegWDg==
X-Received: by 2002:a7b:cd97:0:b0:40e:b4e1:894d with SMTP id y23-20020a7bcd97000000b0040eb4e1894dmr387906wmj.45.1706005314225;
        Tue, 23 Jan 2024 02:21:54 -0800 (PST)
Received: from localhost ([102.140.209.237])
        by smtp.gmail.com with ESMTPSA id t8-20020adff048000000b003366c058509sm7937864wro.23.2024.01.23.02.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 02:21:53 -0800 (PST)
Date: Tue, 23 Jan 2024 13:21:50 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Felix.Kuehling@amd.com
Message-ID: <5e939c58-dddd-4af7-a650-66cce38c4beb@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4398A3F37C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	RCPT_COUNT_THREE(0.00)[4];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: DJXVWHNXLB7T5UELLIFC2ZNR2N44PSJT
X-Message-ID-Hash: DJXVWHNXLB7T5UELLIFC2ZNR2N44PSJT
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Mathias Krause <minipli@grsecurity.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [bug report] drm/amdkfd: Export DMABufs from KFD using GEM handles
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DJXVWHNXLB7T5UELLIFC2ZNR2N44PSJT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Felix Kuehling,

The patch 1819200166ce: "drm/amdkfd: Export DMABufs from KFD using
GEM handles" from Aug 24, 2023 (linux-next), leads to the following
Smatch static checker warning:

	drivers/dma-buf/dma-buf.c:729 dma_buf_get()
	warn: fd used after fd_install() 'fd'

drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
   809  static int kfd_mem_export_dmabuf(struct kgd_mem *mem)
   810  {
   811          if (!mem->dmabuf) {
   812                  struct amdgpu_device *bo_adev;
   813                  struct dma_buf *dmabuf;
   814                  int r, fd;
   815  
   816                  bo_adev = amdgpu_ttm_adev(mem->bo->tbo.bdev);
   817                  r = drm_gem_prime_handle_to_fd(&bo_adev->ddev, bo_adev->kfd.client.file,
   818                                                 mem->gem_handle,
   819                          mem->alloc_flags & KFD_IOC_ALLOC_MEM_FLAGS_WRITABLE ?
   820                                                 DRM_RDWR : 0, &fd);
                                                                     ^^^
The drm_gem_prime_handle_to_fd() function does an fd_install() and
returns the result as "fd".

   821                  if (r)
   822                          return r;
   823                  dmabuf = dma_buf_get(fd);
                                             ^^
Then we do another fget() inside dma_buf_get().  I'm not an expert,
but this looks wrong.  We can't assume that the dmabuf here is the
same one from drm_gem_prime_handle_to_fd() because the user could
change it after the fd_install().  I suspect drm_gem_prime_handle_to_fd()
should pass the dmabuf back instead.

We had several CVEs similar to this such as CVE-2022-1998.

   824                  close_fd(fd);
   825                  if (WARN_ON_ONCE(IS_ERR(dmabuf)))
   826                          return PTR_ERR(dmabuf);
   827                  mem->dmabuf = dmabuf;
   828          }
   829  
   830          return 0;
   831  }

regards,
dan carpenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
