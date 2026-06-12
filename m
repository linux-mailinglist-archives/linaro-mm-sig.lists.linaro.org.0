Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G2+XMXxgLGqRQAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 21:39:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 312FB67C193
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 21:39:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=SdOxErIr;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D0FA40A6A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 19:39:39 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by lists.linaro.org (Postfix) with ESMTPS id 617793F7FF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 19:39:27 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2c0b1a48855so17855ad.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 12:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1781293166; x=1781897966; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a7hmvmA/ZOPAMkxJPFMHlsykhA7hRG+rHWgxmIiSF5c=;
        b=SdOxErIrQDz2EctfEMDMxkTn7cGCfj9q1We1mHCyyxxRWKPTJpFqwiQhH/QKYwyO5L
         j0CikkGEJYwkSrPbxeLjHHpnQ9AWstIUF6xmGAWUfNNG2oNRFjpOOo5Gvp2Io3bg1AES
         FmaDqOMYws/XPsX+8P64j7z84kTPBPXNL/e/Hm/b9vJTyGSFT8xWycueOxmZmMvKPTEI
         eYZv5ol6FCQGkuhJADx6YnJCNby9o08//rcs87cXEp2lJQ9W41PVQEVdYovaMaRWUGPz
         d+0LqcipK/7aPnkcvizXj1mFWev+aXRF1xZzVqbMEPXyX1fh0Uf9yHTNPvYWVW1ipTDb
         BVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781293166; x=1781897966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a7hmvmA/ZOPAMkxJPFMHlsykhA7hRG+rHWgxmIiSF5c=;
        b=ZWVZWu6UTwJnyZ7p2OAno12uSU5i37unNVLLuHbR56sTvh0LeHfk/9ybjY2fYlCqA0
         tJWuVSLod2Liy6Hi9gvW6AKbCQ6Qwuvm9Lo0bAtM3UC4gotASRi8KZ3VoRYsJiUy9pNh
         +WWUp7kaj3n92akoX1rP6sC6iXk3NXGhva6DFKJKSpiSEPa2Bk4Z88i3lBIrDHT7k+77
         YNt7D84Ml9qnjU+dajrWOEhYaXViM0cauwi38oKRrPak33uSC1Jm055hfNUzogE5Mqm6
         xiEFbyBGSLbNKrSBdf75jkp6ZrqQePEIadABU6SnmhD9bZUr3s8UatQ+k/cUCGHy7SvY
         fAUA==
X-Forwarded-Encrypted: i=1; AFNElJ+9ukGMsNGLYGVvpioC7FPDXW6nkqEyzaXvSqxeLQWk1Uoc1qcqEZEKyyUa57dU9JffZipXsA4MDnwKDtdX@lists.linaro.org
X-Gm-Message-State: AOJu0YzX7Rq4v4bANiQ/bKuELq1N7WIZU3V0Dvypgb9WuGbV15lc6SMe
	HCYSbll6E96MNA0+jfKpFWUFqJZw1mlj0oIkVWN6jcIDZg4J15JxXQ504utvDpeDXw==
X-Gm-Gg: Acq92OFOsi0i0h0v2dzwE2w2wo5+j0798F7rjXbDGhGPixZVlENx0/2JrvRz685WFxn
	UXOwVzQp2VWggxRHOyfGjzEbAEPStoo8MxkoCIHhJ4vjRpQSUnnZc1RljhRihbT2xIWh+VpXMiJ
	22BTxnm6b9CO8ucYjx7R+VLI+ZoG8xS4E4deMDDbuMYBDq3ZgV2tbHMQD1qF1v6dg/jorlQr24Q
	ybSDccWl76YikgjKHfvA5yZza1vy9lf5S8hjbdhf8mKEn/I7hwW5Z1O95qjXKwMIO8dDvH3hotp
	0OSgSon05/M1ngXlvTHLDyBdDMrdVlgYIXr5N5o7TSZ789B9klsCLRZ9sVpAPq495sgOdeCZ4VN
	J7sffPezzb3DJkBY7Ew+z+xz43GboKcm1N5GQkQ5wTd6nb+sXhW6TWNT+6rLkAwbVP/AnBVyO1s
	slG+pA9iSwg0e4k0MkTATuFBqJ6zS62erObtbzpenmHzhcOcFCO84RDlG/bSbq
X-Received: by 2002:a17:903:2d0:b0:2c1:ee6e:be1d with SMTP id d9443c01a7336-2c665ec6cc3mr4015ad.27.1781293165632;
        Fri, 12 Jun 2026 12:39:25 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37a25ecd66fsm3628185a91.12.2026.06.12.12.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 12:39:24 -0700 (PDT)
Date: Fri, 12 Jun 2026 19:39:17 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <aixgZQiBQKgS7yIM@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-7-matt@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610154327.37758-7-matt@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: CPK5F4U3VIMRRJHITTI7R6L57I7RWPNI
X-Message-ID-Hash: CPK5F4U3VIMRRJHITTI7R6L57I7RWPNI
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CPK5F4U3VIMRRJHITTI7R6L57I7RWPNI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 312FB67C193

On Wed, Jun 10, 2026 at 04:43:20PM +0100, Matt Evans wrote:
> Previously, vfio_pci_zap_bars() (and the wrapper
> vfio_pci_zap_and_down_write_memory_lock()) calls were paired with
> calls to vfio_pci_dma_buf_move().
> 
> This commit replaces them with a unified new function,
> vfio_pci_zap_revoke_bars() containing both the vfio_pci_dma_buf_move()
> and the unmap_mapping_range(), making it harder for callers to omit
> one.  It adds a wrapper, vfio_pci_lock_zap_revoke_bars(), which takes
> the write memory_lock before zapping, and adds a new
> vfio_pci_unrevoke_bars() for the re-enable path.
> 
> As of "vfio/pci: Convert BAR mmap() to use a DMABUF", the
> unmap_mapping_range() to zap is no longer performed for vfio-pci since
> the DMABUFs used for BAR mappings already zap PTEs when the
> vfio_pci_dma_buf_move() occurs.
> 
> However, it must be assumed that VFIO drivers which override the .mmap
> op could create mappings _not_ backed by DMABUFs.  So, the zap is
> still performed on revoke if .mmap is overridden, using a new
> zap_bars_on_revoke flag.  A driver can explicitly opt out; the flag is
> cleared by the hisi_acc_vfio_pci driver, since its .mmap just wraps
> vfio_pci_core_mmap() and so still uses DMABUFs.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>
> ---
>  .../vfio/pci/hisilicon/hisi_acc_vfio_pci.c    |  8 +++
>  drivers/vfio/pci/vfio_pci_config.c            | 30 ++++----
>  drivers/vfio/pci/vfio_pci_core.c              | 70 +++++++++++++------
>  drivers/vfio/pci/vfio_pci_priv.h              |  3 +-
>  include/linux/vfio_pci_core.h                 |  1 +
>  5 files changed, 73 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c b/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
> index 86362ec424a5..51990f6d66d5 100644
> --- a/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
> +++ b/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
> @@ -1692,6 +1692,14 @@ static int hisi_acc_vfio_pci_probe(struct pci_dev *pdev, const struct pci_device
>  	if (ret)
>  		goto out_put_vdev;
>  
> +	/*
> +	 * hisi_acc_vfio_pci_mmap() calls down to
> +	 * vfio_pci_core_mmap(), so BAR mappings are still
> +	 * DMABUF-backed.  They don't require a zap on revoke, so opt
> +	 * out:
> +	 */
> +	hisi_acc_vdev->core_device.zap_bars_on_revoke = false;
> +

This seems to be happening after we vfio_pci_core_register_device, which
could be slightly problematic if another device in the same group races 
to trigger a hot reset before we can set this to false. Could we 
initialize this flag before registration instead?

>  	hisi_acc_vfio_debug_init(hisi_acc_vdev);
>  	return 0;
>  
> diff --git a/drivers/vfio/pci/vfio_pci_config.c b/drivers/vfio/pci/vfio_pci_config.c
> index a10ed733f0e3..8bfab0da481c 100644
> --- a/drivers/vfio/pci/vfio_pci_config.c
> +++ b/drivers/vfio/pci/vfio_pci_config.c
> @@ -590,12 +590,10 @@ static int vfio_basic_config_write(struct vfio_pci_core_device *vdev, int pos,
>  		virt_mem = !!(le16_to_cpu(*virt_cmd) & PCI_COMMAND_MEMORY);
>  		new_mem = !!(new_cmd & PCI_COMMAND_MEMORY);
>  
> -		if (!new_mem) {
> -			vfio_pci_zap_and_down_write_memory_lock(vdev);
> -			vfio_pci_dma_buf_move(vdev, true);
> -		} else {
> +		if (!new_mem)
> +			vfio_pci_lock_zap_revoke_bars(vdev);
> +		else
>  			down_write(&vdev->memory_lock);
> -		}
>  
>  		/*
>  		 * If the user is writing mem/io enable (new_mem/io) and we
> @@ -631,7 +629,7 @@ static int vfio_basic_config_write(struct vfio_pci_core_device *vdev, int pos,
>  		*virt_cmd |= cpu_to_le16(new_cmd & mask);
>  
>  		if (__vfio_pci_memory_enabled(vdev))
> -			vfio_pci_dma_buf_move(vdev, false);
> +			vfio_pci_unrevoke_bars(vdev);
>  		up_write(&vdev->memory_lock);
>  	}
>  
> @@ -712,16 +710,14 @@ static int __init init_pci_cap_basic_perm(struct perm_bits *perm)
>  static void vfio_lock_and_set_power_state(struct vfio_pci_core_device *vdev,
>  					  pci_power_t state)
>  {
> -	if (state >= PCI_D3hot) {
> -		vfio_pci_zap_and_down_write_memory_lock(vdev);
> -		vfio_pci_dma_buf_move(vdev, true);
> -	} else {
> +	if (state >= PCI_D3hot)
> +		vfio_pci_lock_zap_revoke_bars(vdev);
> +	else
>  		down_write(&vdev->memory_lock);
> -	}
>  
>  	vfio_pci_set_power_state(vdev, state);
>  	if (__vfio_pci_memory_enabled(vdev))
> -		vfio_pci_dma_buf_move(vdev, false);
> +		vfio_pci_unrevoke_bars(vdev);
>  	up_write(&vdev->memory_lock);
>  }
>  
> @@ -908,11 +904,10 @@ static int vfio_exp_config_write(struct vfio_pci_core_device *vdev, int pos,
>  						 &cap);
>  
>  		if (!ret && (cap & PCI_EXP_DEVCAP_FLR)) {
> -			vfio_pci_zap_and_down_write_memory_lock(vdev);
> -			vfio_pci_dma_buf_move(vdev, true);
> +			vfio_pci_lock_zap_revoke_bars(vdev);
>  			pci_try_reset_function(vdev->pdev);
>  			if (__vfio_pci_memory_enabled(vdev))
> -				vfio_pci_dma_buf_move(vdev, false);
> +				vfio_pci_unrevoke_bars(vdev);
>  			up_write(&vdev->memory_lock);
>  		}
>  	}
> @@ -993,11 +988,10 @@ static int vfio_af_config_write(struct vfio_pci_core_device *vdev, int pos,
>  						&cap);
>  
>  		if (!ret && (cap & PCI_AF_CAP_FLR) && (cap & PCI_AF_CAP_TP)) {
> -			vfio_pci_zap_and_down_write_memory_lock(vdev);
> -			vfio_pci_dma_buf_move(vdev, true);
> +			vfio_pci_lock_zap_revoke_bars(vdev);
>  			pci_try_reset_function(vdev->pdev);
>  			if (__vfio_pci_memory_enabled(vdev))
> -				vfio_pci_dma_buf_move(vdev, false);
> +				vfio_pci_unrevoke_bars(vdev);
>  			up_write(&vdev->memory_lock);
>  		}
>  	}
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index f9636d8f9e2a..5ea0bd4e7876 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -319,8 +319,7 @@ static int vfio_pci_runtime_pm_entry(struct vfio_pci_core_device *vdev,
>  	 * The vdev power related flags are protected with 'memory_lock'
>  	 * semaphore.
>  	 */
> -	vfio_pci_zap_and_down_write_memory_lock(vdev);
> -	vfio_pci_dma_buf_move(vdev, true);
> +	vfio_pci_lock_zap_revoke_bars(vdev);
>  
>  	if (vdev->pm_runtime_engaged) {
>  		up_write(&vdev->memory_lock);
> @@ -406,7 +405,7 @@ static void vfio_pci_runtime_pm_exit(struct vfio_pci_core_device *vdev)
>  	down_write(&vdev->memory_lock);
>  	__vfio_pci_runtime_pm_exit(vdev);
>  	if (__vfio_pci_memory_enabled(vdev))
> -		vfio_pci_dma_buf_move(vdev, false);
> +		vfio_pci_unrevoke_bars(vdev);
>  	up_write(&vdev->memory_lock);
>  }
>  
> @@ -1256,6 +1255,8 @@ static int vfio_pci_ioctl_set_irqs(struct vfio_pci_core_device *vdev,
>  	return ret;
>  }
>  
> +static void vfio_pci_zap_revoke_bars(struct vfio_pci_core_device *vdev);
> +
>  static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
>  				void __user *arg)
>  {
> @@ -1264,7 +1265,7 @@ static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
>  	if (!vdev->reset_works)
>  		return -EINVAL;
>  
> -	vfio_pci_zap_and_down_write_memory_lock(vdev);
> +	down_write(&vdev->memory_lock);
>  
>  	/*
>  	 * This function can be invoked while the power state is non-D0. If
> @@ -1277,10 +1278,11 @@ static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
>  	 */
>  	vfio_pci_set_power_state(vdev, PCI_D0);
>  
> -	vfio_pci_dma_buf_move(vdev, true);
> +	vfio_pci_zap_revoke_bars(vdev);

I'm wondering if this change in behavior is correct?
BEFORE this patch the sequence was:

1. zap vma mappings
2. Enter D0

After this patch the sequence becomes

1. Take the lock
2. Enter D0
3. zap vma mappings

My worry is if user-space accesses a BAR *during* the transition to D0,
it could crash since the mappings still exist during the transition?

The old code is immune to it because it removed user-mappings first.

Following the discussion from v1 regarding the ordering of 
vfio_pci_dma_buf_move() and the D0 transition.. while it makes sense to
perform the DMABUF revocation/move after the hardware is in D0.. I'm not
too confident about moving zap after D0 :/ 

I mean, sure, the user would just see all Fs on a read and writes will
be dropped silently until we are in D0.. but the behaviour before this
change was that the user access will fault and hang on the memory_lock 
instead which ensures that the user observes a consistent dev state..

> +
>  	ret = pci_try_reset_function(vdev->pdev);
>  	if (__vfio_pci_memory_enabled(vdev))
> -		vfio_pci_dma_buf_move(vdev, false);
> +		vfio_pci_unrevoke_bars(vdev);
>  	up_write(&vdev->memory_lock);
>  
>  	return ret;
> @@ -1648,20 +1650,37 @@ ssize_t vfio_pci_core_write(struct vfio_device *core_vdev, const char __user *bu
>  }

Thanks,
Praan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
